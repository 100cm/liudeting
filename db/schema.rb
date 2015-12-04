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

ActiveRecord::Schema.define(version: 20151204101610) do

  create_table "applies", force: :cascade do |t|
    t.string   "equip_id"
    t.string   "user_id"
    t.boolean  "is_success",  default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "user_name"
    t.boolean  "is_failed",   default: false
    t.date     "return_time"
  end

  create_table "equipment", force: :cascade do |t|
    t.string   "equipment_name"
    t.date     "return_time"
    t.date     "borrow_time"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.text     "equipment_info"
    t.boolean  "is_reparied",         default: false
    t.boolean  "is_damaged",          default: false
    t.text     "level"
    t.string   "price"
    t.string   "repair_price"
    t.string   "damage_price"
    t.integer  "damage_user_id"
    t.integer  "borrow_user_id"
    t.string   "borrow_user_name"
    t.string   "post_user_name"
    t.string   "post_user_id"
    t.boolean  "is_borrowed",         default: false
    t.boolean  "is_requested",        default: false
    t.integer  "requested_people_id"
    t.string   "request_people_name"
    t.boolean  "is_repairing",        default: false
    t.string   "count"
    t.string   "user_name"
    t.string   "avatar"
  end

  create_table "labs", force: :cascade do |t|
    t.string   "name"
    t.string   "user_id"
    t.string   "position"
    t.text     "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "username"
    t.boolean  "is_admin",               default: false
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",                     null: false
    t.integer  "item_id",                       null: false
    t.string   "event",                         null: false
    t.string   "whodunnit"
    t.text     "object",     limit: 1073741823
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"

end
