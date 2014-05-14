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

ActiveRecord::Schema.define(version: 20140512195508) do

  create_table "animal_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "animals", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deseases", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobtitles", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.integer  "user_id"
    t.string   "email"
    t.integer  "yearofbirth"
    t.boolean  "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.integer  "user_id"
    t.string   "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tadresses", force: true do |t|
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_addresses", force: true do |t|
    t.integer  "user_profile_id"
    t.integer  "countries_id"
    t.string   "City"
    t.string   "State"
    t.string   "Zip"
    t.string   "Address1"
    t.string   "Address2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_animal_types", force: true do |t|
    t.integer  "user_profiles_id"
    t.integer  "anymal_types_id"
    t.integer  "load"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_animals", force: true do |t|
    t.integer  "user_profiles_id"
    t.integer  "animals_id"
    t.integer  "load"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_deseases", force: true do |t|
    t.integer  "user_profiles_id"
    t.integer  "deaseases_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_professions", force: true do |t|
    t.integer  "jobtitles_id"
    t.integer  "PracticeSince"
    t.integer  "roles_id"
    t.integer  "user_profiles_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_profiles", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.integer  "sex"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_workplaces", force: true do |t|
    t.integer  "user_profiles_id"
    t.integer  "workplaces_id"
    t.string   "Name"
    t.integer  "DoctorCount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "workplaces", force: true do |t|
    t.integer  "types_id"
    t.integer  "DoctorCount"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
