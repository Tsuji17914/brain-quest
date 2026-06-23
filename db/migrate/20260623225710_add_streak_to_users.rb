class AddStreakToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :streak, :integer, default: 0, null: false
    add_column :users, :last_played_date, :date
  end
end
