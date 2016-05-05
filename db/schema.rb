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

ActiveRecord::Schema.define(version: 20160505224230) do

  create_table "aplicators", force: :cascade do |t|
    t.string   "name"
    t.string   "prefix"
    t.string   "clinic"
    t.string   "cedProf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.string   "nss"
    t.string   "curp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registers", force: :cascade do |t|
    t.integer  "patientId"
    t.integer  "vaccineId"
    t.integer  "doctorId"
    t.integer  "dosisNumber"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vaccines", force: :cascade do |t|
    t.string   "name"
    t.string   "controlNumber"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
