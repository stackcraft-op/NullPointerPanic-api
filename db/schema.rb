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

ActiveRecord::Schema[8.1].define(version: 2026_08_25_000010) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "answer_options", force: :cascade do |t|
    t.boolean "correct", default: false
    t.datetime "created_at", null: false
    t.bigint "multiple_choice_question_id"
    t.text "text"
    t.datetime "updated_at", null: false
    t.index ["multiple_choice_question_id"], name: "index_answer_options_on_multiple_choice_question_id"
  end

  create_table "flashcards", force: :cascade do |t|
    t.text "answer"
    t.datetime "created_at", null: false
    t.integer "exam_type"
    t.text "question"
    t.bigint "topic_id"
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_flashcards_on_topic_id"
  end

  create_table "multiple_choice_questions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "flashcard_id"
    t.text "question_text"
    t.datetime "updated_at", null: false
    t.index ["flashcard_id"], name: "index_multiple_choice_questions_on_flashcard_id", unique: true
  end

  create_table "profiles", force: :cascade do |t|
    t.string "city"
    t.datetime "created_at", null: false
    t.integer "experience", default: 0
    t.string "first_name"
    t.string "last_name"
    t.string "specialization"
    t.string "state"
    t.integer "tokens", default: 0
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id", unique: true
  end

  create_table "progress_entries", force: :cascade do |t|
    t.datetime "answered_at"
    t.boolean "correct"
    t.datetime "created_at", null: false
    t.bigint "multiple_choice_question_id"
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["multiple_choice_question_id"], name: "index_progress_entries_on_multiple_choice_question_id"
    t.index ["user_id"], name: "index_progress_entries_on_user_id"
  end

  create_table "topics", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "current_streak", default: 0
    t.string "email"
    t.date "last_active_on"
    t.integer "longest_streak", default: 0
    t.string "password_digest"
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "answer_options", "multiple_choice_questions"
  add_foreign_key "flashcards", "topics"
  add_foreign_key "multiple_choice_questions", "flashcards"
  add_foreign_key "profiles", "users"
  add_foreign_key "progress_entries", "multiple_choice_questions"
  add_foreign_key "progress_entries", "users"
end
