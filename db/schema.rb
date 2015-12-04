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

ActiveRecord::Schema.define(version: 20151204080110) do

  create_table "people", force: :cascade do |t|
    t.string   "name",       limit: 60,               null: false
    t.string   "location",   limit: 255, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone",      limit: 255
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
    t.string   "status",     limit: 255
  end

end
