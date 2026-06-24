class AddActivatedToUserItems < ActiveRecord::Migration[8.1]
  def change
    add_column :user_items, :activated, :boolean, default: false, null: false
  end
end
