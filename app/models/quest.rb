class Quest < ApplicationRecord
  belongs_to :daily_challenge
  has_many :attempts, dependent: :destroy

  enum :difficulty, { easy: 0, normal: 1, hard: 2 }

  EXP_REWARDS  = { easy: { first: 50, repeat: 30 },  normal: { first: 90, repeat: 60 },  hard: { first: 150, repeat: 100 } }.freeze
  GOLD_REWARDS = { easy: 10, normal: 20, hard: 35 }.freeze

  validates :difficulty, presence: true
  validates :exp_reward, :gold_reward, presence: true, numericality: { greater_than: 0 }
end
