class Item < ApplicationRecord
  has_many :user_items, dependent: :destroy

  EFFECTS = %w[holy_water sage_stone hint_book].freeze

  validates :name, :description, :effect, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :effect, inclusion: { in: EFFECTS }
end
