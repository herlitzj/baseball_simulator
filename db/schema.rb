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

ActiveRecord::Schema.define(version: 20150426224518) do

  create_table "defenses", force: :cascade do |t|
    t.integer  "player_id"
    t.string   "position"
    t.integer  "error"
    t.string   "rnge"
    t.integer  "throw"
    t.string   "passedball"
    t.integer  "pickoff"
    t.string   "hold"
    t.string   "wp"
    t.string   "balk"
    t.integer  "bfsp"
    t.integer  "bfrp"
    t.integer  "rest0"
    t.integer  "rest1"
    t.integer  "rest2"
    t.integer  "rest3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "distances", force: :cascade do |t|
    t.integer  "stadium_id"
    t.string   "wind_direction"
    t.integer  "lfl"
    t.integer  "lf"
    t.integer  "lc"
    t.integer  "cf"
    t.integer  "rc"
    t.integer  "rf"
    t.integer  "rfl"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer  "home_team"
    t.integer  "away_team"
    t.date     "date"
    t.time     "time"
    t.integer  "location"
    t.integer  "stadium"
    t.string   "wind"
    t.string   "temperature"
    t.string   "sky"
    t.string   "precipitation"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "lineups", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "team_id"
    t.integer  "player_id"
    t.string   "position"
    t.float    "inning_in"
    t.float    "inning_out"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offenses", force: :cascade do |t|
    t.integer  "player_id"
    t.string   "vs_hand"
    t.string   "ifr"
    t.string   "ofr"
    t.string   "df"
    t.string   "power"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parks", force: :cascade do |t|
    t.integer  "stadium_id"
    t.string   "field_option"
    t.integer  "min"
    t.integer  "max"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer  "team_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "hand"
    t.string   "player_type"
    t.integer  "durability"
    t.integer  "dldays"
    t.integer  "run"
    t.integer  "steal"
    t.integer  "jump"
    t.string   "bat"
    t.string   "bunt"
    t.string   "wild"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "plays", force: :cascade do |t|
    t.integer  "player_id"
    t.string   "vs_hand"
    t.integer  "min"
    t.integer  "max"
    t.string   "play"
    t.string   "field"
    t.integer  "fatigue"
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
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "roof"
    t.string   "foul"
    t.integer  "ifr_adj"
    t.integer  "ofr_adj"
    t.string   "lp_ro"
    t.string   "rp_lo"
    t.string   "lsp"
    t.string   "rsp"
    t.string   "surface"
    t.string   "surface_cond"
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "stadium_id"
    t.string   "city"
    t.string   "name"
    t.string   "league"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "league_sub"
    t.string   "logo_url"
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
