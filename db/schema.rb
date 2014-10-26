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

ActiveRecord::Schema.define(version: 20141026015515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comment", force: true do |t|
    t.integer "user"
    t.text    "text"
    t.date    "date"
    t.integer "task"
  end

  create_table "companies", force: true do |t|
    t.string "name_fantasy",    limit: 32, null: false
    t.string "name_commercial", limit: 32, null: false
    t.text   "email"
    t.text   "webpage"
    t.text   "sector"
    t.text   "address"
    t.text   "representative"
    t.text   "giro"
  end

  create_table "company", force: true do |t|
    t.text    "name_fantasy"
    t.text    "name_commercial"
    t.text    "email"
    t.text    "webpage"
    t.integer "phone"
    t.text    "sector"
    t.text    "address"
    t.text    "representative"
    t.text    "giro"
  end

  create_table "services", force: true do |t|
    t.string   "name",    limit: 32, null: false
    t.integer  "company"
    t.integer  "user"
    t.datetime "date"
    t.integer  "rate"
    t.boolean  "paid"
  end

  create_table "task", force: true do |t|
    t.text    "name"
    t.date    "created"
    t.date    "edited"
    t.text    "description"
    t.integer "porcentaje"
    t.text    "hito"
    t.integer "client"
    t.integer "employee"
    t.integer "state"
    t.integer "service"
  end

  create_table "task_state", force: true do |t|
    t.text "state"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "name"
    t.boolean  "super_administrator",    default: false
    t.boolean  "administrator",          default: false
    t.boolean  "employee",               default: false
    t.boolean  "client",                 default: true
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
