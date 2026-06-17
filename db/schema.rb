# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_06_17_225855) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "attempts", force: :cascade do |t|
    t.string "answer"
    t.boolean "correct", default: false, null: false
    t.datetime "created_at", null: false
    t.integer "earned_exp", default: 0, null: false
    t.integer "earned_gold", default: 0, null: false
    t.boolean "first_attempt", default: false, null: false
    t.bigint "quest_id", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["quest_id"], name: "index_attempts_on_quest_id"
    t.index ["user_id"], name: "index_attempts_on_user_id"
  end

  create_table "daily_challenges", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.date "date", null: false
    t.string "genre", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "daily_challenge_id", null: false
    t.integer "difficulty", null: false
    t.integer "exp_reward", null: false
    t.integer "gold_reward", null: false
    t.jsonb "question_data", default: {}, null: false
    t.datetime "updated_at", null: false
    t.index ["daily_challenge_id"], name: "index_quests_on_daily_challenge_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "exp", default: 0, null: false
    t.integer "gold", default: 0, null: false
    t.integer "level", default: 1, null: false
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.string "reset_password_token"
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "attempts", "quests"
  add_foreign_key "attempts", "users"
  add_foreign_key "quests", "daily_challenges"
end
