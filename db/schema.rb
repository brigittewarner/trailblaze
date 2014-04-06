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

ActiveRecord::Schema.define(version: 20140406003322) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "badges", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "badgifications", force: true do |t|
    t.integer  "user_id"
    t.integer  "badge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "badgifications", ["badge_id"], name: "index_badgifications_on_badge_id", using: :btree
  add_index "badgifications", ["user_id"], name: "index_badgifications_on_user_id", using: :btree

  create_table "initiations_tables", force: true do |t|
    t.integer  "trail_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trailifications", force: true do |t|
    t.integer  "trail_id"
    t.integer  "trailmarker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trailifications", ["trail_id"], name: "index_trailifications_on_trail_id", using: :btree
  add_index "trailifications", ["trailmarker_id"], name: "index_trailifications_on_trailmarker_id", using: :btree

  create_table "trailmarkers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "status"
    t.integer  "trail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trails", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

end
