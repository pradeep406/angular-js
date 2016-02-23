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

ActiveRecord::Schema.define(version: 20160223083916) do

  create_table "appointments", force: true do |t|
    t.integer  "physician_id"
    t.integer  "patient_id"
    t.datetime "appointment_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "appointments", ["patient_id"], name: "index_appointments_on_patient_id", using: :btree
  add_index "appointments", ["physician_id"], name: "index_appointments_on_physician_id", using: :btree

  create_table "assemblies", force: true do |t|
  end

  create_table "charans", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "current_country"
    t.string "category"
  end

  create_table "employees", force: true do |t|
    t.string "name"
  end

  create_table "keywords", force: true do |t|
    t.string   "keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts", force: true do |t|
  end

  create_table "patients", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physicians", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: true do |t|
    t.string   "name"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "pictures", ["imageable_id", "imageable_type"], name: "index_pictures_on_imageable_id_and_imageable_type", using: :btree

  create_table "pradeeps", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string "name"
  end

  create_table "sites", force: true do |t|
    t.string "name"
  end

  create_table "tables", force: true do |t|
  end

  create_table "user_details", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "location"
    t.integer "age"
    t.integer "salary"
    t.integer "emp_id"
    t.string  "branch"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "designation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
