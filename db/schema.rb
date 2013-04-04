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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130404220505) do

  create_table "artists", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.integer  "age"
    t.string   "gender"
    t.string   "instrument"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "band_artists", :force => true do |t|
    t.integer  "artist_id"
    t.integer  "band_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "band_artists", ["artist_id"], :name => "index_band_artists_on_artist_id"
  add_index "band_artists", ["band_id"], :name => "index_band_artists_on_band_id"

  create_table "bands", :force => true do |t|
    t.string   "name"
    t.integer  "date_formed"
    t.string   "genre"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "recordings", :force => true do |t|
    t.integer  "band_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "album_name"
  end

  add_index "recordings", ["band_id"], :name => "index_recordings_on_band_id"

  create_table "singles", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
