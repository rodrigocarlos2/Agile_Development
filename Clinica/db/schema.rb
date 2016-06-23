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

ActiveRecord::Schema.define(version: 20160623025308) do

  create_table "days", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "duties", force: :cascade do |t|
    t.string   "turn",       limit: 255
    t.integer  "day_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "duties", ["day_id"], name: "index_duties_on_day_id", using: :btree

  create_table "duty_nurses", force: :cascade do |t|
    t.integer  "duty_id",    limit: 4
    t.integer  "nurse_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "duty_nurses", ["duty_id"], name: "index_duty_nurses_on_duty_id", using: :btree
  add_index "duty_nurses", ["nurse_id"], name: "index_duty_nurses_on_nurse_id", using: :btree

  create_table "nurses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "sex",        limit: 255
    t.integer  "age",        limit: 4
    t.integer  "coren",      limit: 4
    t.string   "cpf",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "duties", "days"
  add_foreign_key "duty_nurses", "duties"
  add_foreign_key "duty_nurses", "nurses"
end
