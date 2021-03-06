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

ActiveRecord::Schema.define(version: 20160324212325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pg_trgm"

  create_table "cocktails", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "image"
    t.text     "recipe_steps"
    t.string   "alcohol_type", default: ""
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
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "professional_id"
    t.integer  "user_review_id"
    t.integer  "professional_review_id"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "is_confirmed",           default: false, null: false
    t.integer  "price_cents",            default: 5000,  null: false
    t.string   "price_currency",         default: "EUR", null: false
    t.integer  "order_id"
  end

  add_index "events", ["order_id"], name: "index_events_on_order_id", using: :btree
  add_index "events", ["professional_id"], name: "index_events_on_professional_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "state"
    t.integer  "amount_cents",    default: 0,     null: false
    t.string   "amount_currency", default: "EUR", null: false
    t.json     "payment"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "user_id"
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "professionals", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "description"
    t.string   "phone_number"
    t.integer  "max_travel_range"
    t.string   "professional_role"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "user_id"
    t.string   "business_address"
    t.float    "rating"
    t.string   "name"
  end

  create_table "reviews", force: :cascade do |t|
    t.float    "rating"
    t.text     "content"
    t.integer  "reviewable_id"
    t.string   "reviewable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "reviewer_id"
    t.string   "reviewer_type"
  end

  add_index "reviews", ["reviewable_type", "reviewable_id"], name: "index_reviews_on_reviewable_type_and_reviewable_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
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
    t.boolean  "admin",                  default: false, null: false
    t.float    "rating"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "doses", "cocktails"
  add_foreign_key "doses", "ingredients"
  add_foreign_key "events", "orders"
  add_foreign_key "events", "professionals"
  add_foreign_key "events", "users"
  add_foreign_key "orders", "users"
end
