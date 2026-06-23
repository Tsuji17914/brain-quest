class UserItem < ApplicationRecord
  belongs_to :user
  belongs_to :item

  scope :unused, -> { where(used: false) }

  def use!
    update!(used: true, used_at: Time.current)
  end
end
