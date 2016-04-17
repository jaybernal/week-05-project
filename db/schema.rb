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

ActiveRecord::Schema.define(version: 1) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auditors", force: :cascade do |t|
    t.string "name",  null: false
    t.string "email", null: false
    t.string "phone", null: false
  end

  create_table "cases", force: :cascade do |t|
    t.integer "number",         null: false
    t.integer "coordinator_id"
    t.integer "auditor_id"
    t.integer "hospital_id"
    t.integer "patient_id"
  end

  create_table "coordinators", force: :cascade do |t|
    t.string  "name",       null: false
    t.string  "email",      null: false
    t.string  "phone",      null: false
    t.integer "auditor_id"
  end

  create_table "coordinators_hospitals", id: false, force: :cascade do |t|
    t.integer "coordinator_id", null: false
    t.integer "hospital_id",    null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "name",  null: false
    t.string "city",  null: false
    t.string "phone", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string  "name",        null: false
    t.string  "gender",      null: false
    t.text    "organs_list", null: false
    t.integer "term_date",   null: false
    t.integer "hospital_id"
    t.integer "patient_id"
  end

end
