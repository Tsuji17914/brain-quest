class DailyChallenge < ApplicationRecord
  has_many :quests, dependent: :destroy

  GENRES = %w[memory calculation word_puzzle].freeze

  validates :date, presence: true, uniqueness: true
  validates :genre, presence: true, inclusion: { in: GENRES }
end
