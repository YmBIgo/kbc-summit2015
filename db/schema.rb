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

ActiveRecord::Schema.define(version: 20160104073729) do

  create_table "members", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "plan_id",      limit: 4
    t.boolean  "attend_check"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "dinner_name", limit: 255,               null: false
    t.integer  "start_month", limit: 4,     default: 1, null: false
    t.integer  "start_day",   limit: 4,                 null: false
    t.integer  "start_time",  limit: 4,                 null: false
    t.text     "detail",      limit: 65535
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "speakers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "job",        limit: 255
    t.text     "carrier",    limit: 65535
    t.text     "introduce",  limit: 65535
    t.text     "message",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "text",       limit: 65535
    t.string   "link_url",   limit: 255
    t.string   "leader",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
