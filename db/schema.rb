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

ActiveRecord::Schema.define(version: 20181011100531) do

  create_table "chats", force: :cascade do |t|
    t.text     "message",    limit: 65535
    t.string   "username",   limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "checkins", force: :cascade do |t|
    t.integer  "trip_id",    limit: 4
    t.decimal  "lat",                  precision: 10, scale: 5
    t.decimal  "lng",                  precision: 10, scale: 5
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "checkins", ["trip_id"], name: "index_checkins_on_trip_id", using: :btree

  create_table "crimes", force: :cascade do |t|
    t.string   "Type",                limit: 255
    t.string   "Locality",            limit: 255
    t.text     "Description",         limit: 65535
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
    t.string   "image",               limit: 255
    t.string   "Age",                 limit: 255
    t.string   "Gender",              limit: 255
    t.decimal  "lat",                               precision: 10, scale: 5
    t.decimal  "lng",                               precision: 10, scale: 5
  end

  create_table "trips", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "uuid",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "police_station",         limit: 255
    t.string   "nearest_police_chowki",  limit: 255
    t.string   "mobile_number",          limit: 255
    t.string   "category",               limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "email",                  limit: 255, default: "",   null: false
    t.string   "encrypted_password",     limit: 255, default: "",   null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.string   "username",               limit: 255
    t.boolean  "is_signed_in",                       default: true
    t.float    "latitude",               limit: 24
    t.float    "longitude",              limit: 24
  end

  add_index "volunteers", ["confirmation_token"], name: "index_volunteers_on_confirmation_token", unique: true, using: :btree
  add_index "volunteers", ["email"], name: "index_volunteers_on_email", unique: true, using: :btree
  add_index "volunteers", ["reset_password_token"], name: "index_volunteers_on_reset_password_token", unique: true, using: :btree
  add_index "volunteers", ["username"], name: "index_volunteers_on_username", unique: true, using: :btree

  add_foreign_key "checkins", "trips"
end
