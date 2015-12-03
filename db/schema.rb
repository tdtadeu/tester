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

ActiveRecord::Schema.define(version: 20151203184031) do

  create_table "brands", force: :cascade do |t|
    t.string   "name",       default: "banana", null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "sms",        default: "SMS",    null: false
    t.string   "logo_uid"
    t.string   "logo_name"
  end

  add_index "brands", ["name"], name: "index_brands_on_name", unique: true

  create_table "partners", force: :cascade do |t|
    t.string   "logo_uid"
    t.string   "logo_name"
    t.string   "url"
    t.string   "partner_type"
    t.string   "stock_type"
    t.integer  "brand_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "partners", ["brand_id"], name: "index_partners_on_brand_id"

  create_table "partners_products", force: :cascade do |t|
    t.integer "partner_id"
    t.integer "product_id"
  end

  add_index "partners_products", ["partner_id"], name: "index_partners_products_on_partner_id"
  add_index "partners_products", ["product_id"], name: "index_partners_products_on_product_id"

  create_table "products", force: :cascade do |t|
    t.string   "sku"
    t.decimal  "value",      precision: 10, scale: 2
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end
