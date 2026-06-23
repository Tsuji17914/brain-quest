class CreateUserItems < ActiveRecord::Migration[8.1]
  def change
    create_table :user_items do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.boolean :used, null: false, default: false
      t.datetime :used_at

      t.timestamps
    end
  end
end
