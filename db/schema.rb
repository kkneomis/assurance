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

ActiveRecord::Schema.define(version: 20150422114036) do

  create_table "aol_fours", force: true do |t|
    t.string   "q_nineteen"
    t.string   "q_twenty"
    t.string   "q_twentyone"
    t.string   "q_twentytwo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aol_ones", force: true do |t|
    t.string   "q_one"
    t.string   "q_two"
    t.string   "q_three"
    t.string   "q_four"
    t.string   "q_five"
    t.string   "q_six"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aol_threes", force: true do |t|
    t.string   "q_thirthteen"
    t.string   "q_fourthteen"
    t.string   "q_fithteen"
    t.string   "q_sixthteen"
    t.string   "q_seventeen"
    t.string   "q_eightteen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aol_twos", force: true do |t|
    t.string   "q_seven"
    t.string   "q_eight"
    t.string   "q_nine"
    t.string   "q_ten"
    t.string   "q_eleven"
    t.string   "q_twelve"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_informations", force: true do |t|
    t.string   "Course_Title"
    t.integer  "CRN"
    t.string   "Days"
    t.string   "Time"
    t.string   "Roomstring"
    t.string   "Enrollment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "high_scores", force: true do |t|
    t.string   "game"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
  end

  create_table "p_informations", force: true do |t|
    t.string   "First_Name"
    t.string   "Last_Name"
    t.integer  "Rank"
    t.string   "Department"
    t.string   "Room"
    t.string   "Email"
    t.string   "Ext"
    t.string   "OfficeHours"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "p_infos", force: true do |t|
    t.string   "Name"
    t.integer  "Rank"
    t.string   "Department"
    t.string   "Room"
    t.string   "Email"
    t.string   "Ext"
    t.string   "OfficeHours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professor_schedules", force: true do |t|
    t.string   "name"
    t.integer  "rank"
    t.string   "department"
    t.integer  "room"
    t.string   "email"
    t.integer  "ext"
    t.string   "Course_Title"
    t.integer  "CRN"
    t.string   "meeting_days"
    t.integer  "time"
    t.integer  "room_num"
    t.integer  "enrollment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", force: true do |t|
    t.string   "First_Name"
    t.string   "Last_Name"
    t.string   "Department"
    t.string   "Address"
    t.string   "City"
    t.string   "State"
    t.string   "Zip_Code"
    t.string   "Cell_Phone"
    t.string   "Home_Phone"
    t.string   "Office_Phone"
    t.string   "Office_Fax"
    t.string   "Primary_Email"
    t.string   "Secondary_Email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "questions_aol_1s", force: true do |t|
    t.string   "q1"
    t.string   "q2"
    t.string   "q3"
    t.string   "q4"
    t.string   "q5"
    t.string   "q6"
    t.string   "q7"
    t.string   "q8"
    t.string   "q9"
    t.string   "q10"
    t.string   "q11"
    t.string   "q12"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rapidfire_answer_groups", force: true do |t|
    t.integer  "question_group_id"
    t.integer  "user_id"
    t.string   "user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rapidfire_answer_groups", ["question_group_id"], name: "index_rapidfire_answer_groups_on_question_group_id"
  add_index "rapidfire_answer_groups", ["user_id", "user_type"], name: "index_rapidfire_answer_groups_on_user_id_and_user_type"

  create_table "rapidfire_answers", force: true do |t|
    t.integer  "answer_group_id"
    t.integer  "question_id"
    t.text     "answer_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rapidfire_answers", ["answer_group_id"], name: "index_rapidfire_answers_on_answer_group_id"
  add_index "rapidfire_answers", ["question_id"], name: "index_rapidfire_answers_on_question_id"

  create_table "rapidfire_question_groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rapidfire_questions", force: true do |t|
    t.integer  "question_group_id"
    t.string   "type"
    t.string   "question_text"
    t.integer  "position"
    t.text     "answer_options"
    t.text     "validation_rules"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rapidfire_questions", ["question_group_id"], name: "index_rapidfire_questions_on_question_group_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "string"
    t.boolean  "admin",                  default: false
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
