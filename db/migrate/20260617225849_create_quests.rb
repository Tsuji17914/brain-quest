class CreateQuests < ActiveRecord::Migration[8.1]
  def change
    create_table :quests do |t|
      t.references :daily_challenge, null: false, foreign_key: true
      t.integer :difficulty, null: false
      t.jsonb :question_data, null: false, default: {}
      t.integer :exp_reward, null: false
      t.integer :gold_reward, null: false

      t.timestamps
    end
  end
end
