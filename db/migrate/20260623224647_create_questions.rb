class CreateQuestions < ActiveRecord::Migration[8.1]
  def change
    create_table :questions do |t|
      t.string :genre, null: false
      t.integer :difficulty, null: false
      t.jsonb :question_data, null: false, default: {}

      t.timestamps
    end
  end
end
