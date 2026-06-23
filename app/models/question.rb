class Question < ApplicationRecord
  enum :difficulty, { easy: 0, normal: 1, hard: 2 }

  validates :genre, presence: true, inclusion: { in: DailyChallenge::GENRES }
  validates :difficulty, presence: true
  validates :question_data, presence: true

  scope :for_genre_and_difficulty, ->(genre, difficulty) { where(genre: genre, difficulty: difficulty) }
end
