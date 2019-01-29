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

ActiveRecord::Schema.define(version: 2018_10_11_021305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "address"
    t.string "size"
    t.string "founded"
    t.string "revenue"
    t.text "synopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "houses", force: :cascade do |t|
    t.bigint "company_id"
    t.string "location"
    t.string "area"
    t.string "builtyear"
    t.string "style"
    t.float "price"
    t.integer "totalfloors"
    t.string "basement"
    t.string "currentowner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "picture"
    t.index ["company_id"], name: "index_houses_on_company_id"
    t.index ["user_id"], name: "index_houses_on_user_id"
  end

  create_table "inquiries", force: :cascade do |t|
    t.text "subject"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "house_id"
    t.text "reply"
    t.index ["house_id"], name: "index_inquiries_on_house_id"
    t.index ["user_id"], name: "index_inquiries_on_user_id"
  end

  create_table "interests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "house_id"
    t.index ["house_id"], name: "index_interests_on_house_id"
    t.index ["user_id"], name: "index_interests_on_user_id"
  end

  create_table "lists", force: :cascade do |t|
    t.bigint "company_id"
    t.bigint "user_id"
    t.bigint "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_lists_on_company_id"
    t.index ["house_id"], name: "index_lists_on_house_id"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string "location"
    t.integer "min_area"
    t.integer "max_area"
    t.integer "min_year"
    t.integer "max_year"
    t.string "style"
    t.float "min_price"
    t.float "max_price"
    t.integer "totalfloors"
    t.string "basement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
    t.boolean "realtor", default: false
    t.boolean "hunter", default: false
    t.string "phone"
    t.string "method"
    t.bigint "company_id"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "companies", "users"
  add_foreign_key "houses", "users"
  add_foreign_key "inquiries", "houses"
  add_foreign_key "inquiries", "users"
  add_foreign_key "interests", "houses"
  add_foreign_key "interests", "users"
  add_foreign_key "users", "companies"
end
