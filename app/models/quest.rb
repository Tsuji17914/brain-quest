class Quest < ApplicationRecord
  belongs_to :daily_challenge
  has_many :attempts, dependent: :destroy

  enum :difficulty, { easy: 0, normal: 1, hard: 2 }

  EXP_REWARDS  = { easy: 50, normal: 90, hard: 150 }.freeze
  GOLD_REWARDS = { easy: 10, normal: 20, hard: 35 }.freeze
  TIME_LIMITS  = { easy: 30, normal: 45, hard: 60 }.freeze

  TIMED_GENRES = %w[calculation word_puzzle].freeze

  def time_limit
    TIME_LIMITS[difficulty.to_sym]
  end

  def timed?
    TIMED_GENRES.include?(daily_challenge.genre)
  end

  validates :difficulty, presence: true
  validates :exp_reward, :gold_reward, presence: true, numericality: { greater_than: 0 }
end
