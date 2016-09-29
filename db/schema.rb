# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150627051030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rapidfire_answer_groups", force: :cascade do |t|
    t.integer  "question_group_id"
    t.string   "user_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["question_group_id"], name: "index_rapidfire_answer_groups_on_question_group_id", using: :btree
    t.index ["user_id", "user_type"], name: "index_rapidfire_answer_groups_on_user_id_and_user_type", using: :btree
  end

  create_table "rapidfire_answers", force: :cascade do |t|
    t.integer  "answer_group_id"
    t.integer  "question_id"
    t.text     "answer_text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["answer_group_id"], name: "index_rapidfire_answers_on_answer_group_id", using: :btree
    t.index ["question_id"], name: "index_rapidfire_answers_on_question_id", using: :btree
  end

  create_table "rapidfire_question_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rapidfire_questions", force: :cascade do |t|
    t.integer  "question_group_id"
    t.string   "type"
    t.string   "question_text"
    t.integer  "position"
    t.text     "answer_options"
    t.text     "validation_rules"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["question_group_id"], name: "index_rapidfire_questions_on_question_group_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "password_digest",    default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
