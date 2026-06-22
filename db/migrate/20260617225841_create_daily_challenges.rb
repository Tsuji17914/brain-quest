class CreateDailyChallenges < ActiveRecord::Migration[8.1]
  def change
    create_table :daily_challenges do |t|
      t.date :date, null: false
      t.string :genre, null: false

      t.timestamps
    end
  end
end
