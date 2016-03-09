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

ActiveRecord::Schema.define(version: 20160308165845) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barmen", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "description"
  end

  add_index "barmen", ["email"], name: "index_barmen_on_email", unique: true, using: :btree
  add_index "barmen", ["reset_password_token"], name: "index_barmen_on_reset_password_token", unique: true, using: :btree

  create_table "cocktails", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image"
    t.text     "recipe_steps"
  end

  create_table "doses", force: :cascade do |t|
    t.string   "quantity"
    t.integer  "cocktail_id"
    t.integer  "ingredient_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "doses", ["cocktail_id"], name: "index_doses_on_cocktail_id", using: :btree
  add_index "doses", ["ingredient_id"], name: "index_doses_on_ingredient_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "address"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "user_id"
    t.integer  "barman_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "events", ["barman_id"], name: "index_events_on_barman_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "address"
    t.string   "phone_number"
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.string   "picture"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "doses", "cocktails"
  add_foreign_key "doses", "ingredients"
  add_foreign_key "events", "barmen"
  add_foreign_key "events", "users"
end
