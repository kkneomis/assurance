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

ActiveRecord::Schema.define(version: 20141119201125) do

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "Professor_ID"
    t.string   "Department"
    t.string   "Address"
    t.string   "City"
    t.string   "State"
    t.string   "Zip_Code"
    t.string   "Cell_Phone"
    t.string   "Home_Phone"
    t.string   "Office_Phone"
    t.string   "Primary_Email"
    t.string   "Secondary_Email"
    t.string   "First_Name"
    t.string   "Last_Name"
    t.string   "Office_Fax"
    t.integer  "user_id"
  end

  add_index "professors", ["Professor_ID"], name: "index_professors_on_Professor_ID"

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
