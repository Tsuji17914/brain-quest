class Attempt < ApplicationRecord
  belongs_to :user
  belongs_to :quest

  validates :correct, inclusion: { in: [ true, false ] }
  validates :first_attempt, inclusion: { in: [ true, false ] }
  validates :earned_exp, :earned_gold, numericality: { greater_than_or_equal_to: 0 }
end
