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

ActiveRecord::Schema.define(version: 20160918073003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.integer  "id_nim"
    t.string   "examtype"
    t.date     "examdate"
    t.string   "status"
    t.string   "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medications", force: :cascade do |t|
    t.string   "name"
    t.integer  "dosage"
    t.integer  "duration"
    t.date     "startdate"
    t.string   "sideeffects"
    t.string   "purpose"
    t.string   "comments"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.date     "dateofbirth"
    t.string   "status"
    t.string   "medication"
    t.string   "emergencycontact"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "rectangles", force: :cascade do |t|
    t.text     "width"
    t.text     "height"
    t.text     "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "images"
  end

  create_table "visits", force: :cascade do |t|
    t.integer  "id_num"
    t.string   "practitioner_name"
    t.string   "specialty"
    t.date     "dateofvisit"
    t.string   "comments"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
