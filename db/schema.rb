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

ActiveRecord::Schema.define(version: 20141220163637) do

  create_table "albums", force: true do |t|
    t.string   "title"
    t.string   "publisher"
    t.date     "dateofpublication"
    t.string   "language"
    t.integer  "singer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "albums", ["singer_id"], name: "index_albums_on_singer_id"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.date     "dateofcreation"
    t.string   "email"
    t.string   "phone"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contains", force: true do |t|
    t.integer  "song_id"
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contains", ["album_id"], name: "index_contains_on_album_id"
  add_index "contains", ["song_id"], name: "index_contains_on_song_id"

  create_table "singers", force: true do |t|
    t.string   "lname"
    t.string   "fname"
    t.date     "dateofbirth"
    t.string   "email"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "singers", ["company_id"], name: "index_singers_on_company_id"

  create_table "songs", force: true do |t|
    t.string   "title"
    t.string   "lyricist"
    t.string   "composer"
    t.string   "duration"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "songs", ["company_id"], name: "index_songs_on_company_id"

end
