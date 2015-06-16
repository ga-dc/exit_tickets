# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150616165528) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "enrollment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses_instructors", id: false, force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "user_id",   null: false
  end

  add_index "courses_instructors", ["course_id"], name: "index_courses_instructors_on_course_id"
  add_index "courses_instructors", ["user_id"], name: "index_courses_instructors_on_user_id"

  create_table "possible_responses", force: :cascade do |t|
    t.integer  "question_id"
    t.string   "vale"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "possible_responses", ["question_id"], name: "index_possible_responses_on_question_id"

  create_table "questions", force: :cascade do |t|
    t.string   "type"
    t.string   "prompt"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "responses", force: :cascade do |t|
    t.string   "value"
    t.integer  "question_id"
    t.integer  "survey_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "responses", ["question_id"], name: "index_responses_on_question_id"
  add_index "responses", ["survey_id"], name: "index_responses_on_survey_id"

  create_table "survey_questions", force: :cascade do |t|
    t.integer  "survey_id"
    t.integer  "question_id"
    t.integer  "position"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "survey_questions", ["question_id"], name: "index_survey_questions_on_question_id"
  add_index "survey_questions", ["survey_id"], name: "index_survey_questions_on_survey_id"

  create_table "surveys", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "surveys", ["course_id"], name: "index_surveys_on_course_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "producer"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
