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

ActiveRecord::Schema.define(version: 20151219060635) do

  create_table "addresses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.string   "landmark",   limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.string   "zip",        limit: 255
    t.string   "contact",    limit: 255
    t.string   "status",     limit: 255, default: "default"
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id", using: :btree

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "phone",        limit: 4
    t.text     "address",      limit: 65535
    t.string   "city",         limit: 255
    t.string   "state",        limit: 255
    t.integer  "zip",          limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "user_id",      limit: 4
    t.integer  "total_amount", limit: 4
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.string   "category",       limit: 255
    t.string   "sub_category",   limit: 255
    t.string   "type",           limit: 255
    t.string   "brand",          limit: 255
    t.string   "image_url",      limit: 255
    t.text     "description",    limit: 65535
    t.string   "offer_test",     limit: 255
    t.string   "sales_package",  limit: 255
    t.text     "features",       limit: 65535
    t.string   "disclaimer",     limit: 255
    t.decimal  "offer_price",                  precision: 10
    t.decimal  "base_price",                   precision: 10
    t.decimal  "dealer_price",                 precision: 10
    t.decimal  "shipping_cost",                precision: 10
    t.integer  "quantity_limit", limit: 4
    t.string   "unit_type",      limit: 255
    t.string   "vendor_id",      limit: 255
    t.string   "status",         limit: 255
    t.string   "uploaded_by",    limit: 255
    t.datetime "updated_on"
    t.string   "updated_by",     limit: 255
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "selected_items", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.integer  "cart_id",    limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "quantity",   limit: 4, default: 1
    t.integer  "order_id",   limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "fname",                  limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "addresses", "users"
  add_foreign_key "orders", "users"
end
