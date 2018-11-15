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

ActiveRecord::Schema.define(version: 20181115154205) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "telephone"
    t.text     "roles",                  default: [],              array: true
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
  end

  create_table "authorizeds", force: :cascade do |t|
    t.string   "name",        default: "", null: false
    t.string   "telephone",   default: "", null: false
    t.string   "dni",         default: "", null: false
    t.integer  "user_id"
    t.datetime "date_in"
    t.datetime "date_out"
    t.string   "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "authorizeds", ["user_id"], name: "index_authorizeds_on_user_id", using: :btree

  create_table "bookeables", force: :cascade do |t|
    t.string   "name",           default: "",  null: false
    t.decimal  "unit_price",     default: 1.0, null: false
    t.decimal  "unit_time",      default: 1.0, null: false
    t.string   "description",    default: "",  null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "bookeable_type"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",        default: "", null: false
    t.string   "description", default: "", null: false
    t.datetime "date"
    t.string   "place"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "image"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",           default: "", null: false
    t.integer  "state",           default: 0,  null: false
    t.string   "summary"
    t.text     "body",                         null: false
    t.string   "author"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "principal_image"
    t.datetime "date"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "bookeable_id"
    t.datetime "date",                      null: false
    t.decimal  "time_used"
    t.string   "comments"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "title",        default: "", null: false
    t.string   "date_range",   default: "", null: false
    t.datetime "start"
    t.datetime "end"
    t.string   "color"
  end

  add_index "reservations", ["bookeable_id"], name: "index_reservations_on_bookeable_id", using: :btree
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id", using: :btree

  create_table "settings", force: :cascade do |t|
    t.string   "primary_color"
    t.string   "secondary_color"
    t.string   "typography"
    t.string   "twitter_user"
    t.string   "facebook_user"
    t.string   "instagram_user"
    t.string   "youtube_user"
    t.integer  "singleton_guard", default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "logo"
  end

  create_table "site_contents", force: :cascade do |t|
    t.string   "tag"
    t.string   "name"
    t.integer  "content_type"
    t.string   "file"
    t.text     "text"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "temporal_images", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "dni"
    t.string   "member_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "telephone"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "remember_updated_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_foreign_key "authorizeds", "users"
  add_foreign_key "reservations", "bookeables"
  add_foreign_key "reservations", "users"
end
