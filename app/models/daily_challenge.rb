class DailyChallenge < ApplicationRecord
  has_many :quests, dependent: :destroy

  GENRES = %w[memory calculation word_puzzle].freeze

  validates :date, presence: true, uniqueness: { scope: :genre }
  validates :genre, presence: true, inclusion: { in: GENRES }
end
