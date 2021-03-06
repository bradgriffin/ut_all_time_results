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

ActiveRecord::Schema.define(version: 20131231184007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coaches", force: true do |t|
    t.string   "name"
    t.string   "active_seasons"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.date     "date"
    t.integer  "ut_score"
    t.integer  "opponent_score"
    t.integer  "season_id"
    t.integer  "opponent_id"
    t.integer  "location_id"
    t.integer  "ut_rank"
    t.integer  "opponent_rank"
    t.integer  "result_id"
    t.integer  "coach_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opponents", force: true do |t|
    t.string   "school_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rankings", force: true do |t|
    t.string   "ranking"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.string   "result"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasons", force: true do |t|
    t.string   "season"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
