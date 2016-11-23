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

ActiveRecord::Schema.define(version: 20161121122442) do

  create_table "enquiries", force: :cascade do |t|
    t.string   "Reference",   limit: 255
    t.string   "Location",    limit: 255
    t.text     "Description", limit: 65535
    t.integer  "Amount",      limit: 4
    t.date     "Date"
    t.time     "Time"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "enquiry_measures", force: :cascade do |t|
    t.integer  "enquiry_id",  limit: 4
    t.integer  "measure_id",  limit: 4
    t.boolean  "done"
    t.string   "responsible", limit: 255
    t.boolean  "needed"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "enquiry_measures", ["enquiry_id"], name: "index_enquiry_measures_on_enquiry_id", using: :btree
  add_index "enquiry_measures", ["measure_id"], name: "index_enquiry_measures_on_measure_id", using: :btree

  create_table "measures", force: :cascade do |t|
    t.string "measurement", limit: 255
    t.string "type",        limit: 255
    t.date   "valid_from"
    t.date   "valid_to"
  end

end
