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

ActiveRecord::Schema.define(version: 20160128223832) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "authors", force: true do |t|
    t.string   "name"
    t.string   "href"
    t.string   "imgurl"
    t.string   "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "logo_file"
    t.string   "field"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url_name"
    t.string   "imgurl"
    t.integer  "orderid"
  end

  create_table "categories_posts", force: true do |t|
    t.integer "category_id"
    t.integer "post_id"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "category_id"
    t.integer  "user_id"
    t.integer  "active"
    t.string   "urltext"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "brief"
    t.string   "imgurl"
    t.text     "sniptext"
  end

  create_table "request_texts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "website"
    t.text     "body"
    t.string   "ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subs_emails", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ip"
  end

end
