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

ActiveRecord::Schema.define(version: 20150403194218) do

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "shahid_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "comments", ["shahid_id", "created_at"], name: "index_comments_on_shahid_id_and_created_at"
  add_index "comments", ["shahid_id"], name: "index_comments_on_shahid_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "shahids", force: :cascade do |t|
    t.string   "pname"
    t.string   "ename"
    t.text     "bio",        limit: 1000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "picture"
    t.string   "link1"
    t.string   "link2"
    t.string   "link3"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.datetime "reset_sent_at"
    t.string   "reset_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
