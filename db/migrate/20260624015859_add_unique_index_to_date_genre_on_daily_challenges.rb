class AddUniqueIndexToDateGenreOnDailyChallenges < ActiveRecord::Migration[8.1]
  def change
    add_index :daily_challenges, [:date, :genre], unique: true
  end
end
