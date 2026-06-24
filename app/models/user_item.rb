class UserItem < ApplicationRecord
  belongs_to :user
  belongs_to :item

  scope :unused, -> { where(used: false) }
  scope :activated, -> { where(activated: true) }

  def use!
    update!(used: true, activated: false, used_at: Time.current)
  end
end
