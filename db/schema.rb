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

ActiveRecord::Schema.define(version: 20150418221832) do

  create_table "locations", force: :cascade do |t|
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "precipitations", force: :cascade do |t|
    t.integer  "location_id"
    t.string   "month"
    t.string   "precip"
    t.integer  "min"
    t.integer  "max"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "skies", force: :cascade do |t|
    t.integer  "location_id"
    t.string   "month"
    t.string   "sky"
    t.integer  "min"
    t.integer  "max"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stadia", force: :cascade do |t|
    t.integer  "location_id"
    t.integer  "team_id"
    t.string   "stadium"
    t.integer  "lfl"
    t.integer  "lf"
    t.integer  "lc"
    t.integer  "cf"
    t.integer  "rc"
    t.integer  "rf"
    t.integer  "rfl"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "stadium_id"
    t.string   "city"
    t.string   "name"
    t.string   "league"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "league_sub"
  end

  create_table "temperatures", force: :cascade do |t|
    t.integer  "location_id"
    t.string   "month"
    t.string   "time"
    t.string   "temp"
    t.integer  "min"
    t.integer  "max"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "winds", force: :cascade do |t|
    t.integer  "stadium_id"
    t.string   "month"
    t.string   "wind"
    t.integer  "min"
    t.integer  "max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
