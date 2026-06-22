class CreateAttempts < ActiveRecord::Migration[8.1]
  def change
    create_table :attempts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :quest, null: false, foreign_key: true
      t.string :answer
      t.boolean :correct, null: false, default: false
      t.boolean :first_attempt, null: false, default: false
      t.integer :earned_exp, null: false, default: 0
      t.integer :earned_gold, null: false, default: 0

      t.timestamps
    end
  end
end
