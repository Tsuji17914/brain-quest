class Quest < ApplicationRecord
  belongs_to :daily_challenge
  has_many :attempts, dependent: :destroy

  enum :difficulty, { easy: 0, normal: 1, hard: 2 }

  EXP_REWARDS  = { easy: 50, normal: 90, hard: 150 }.freeze
  GOLD_REWARDS = { easy: 10, normal: 20, hard: 35 }.freeze

  validates :difficulty, presence: true
  validates :exp_reward, :gold_reward, presence: true, numericality: { greater_than: 0 }
end
