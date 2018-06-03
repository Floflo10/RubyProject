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

ActiveRecord::Schema.define(version: 20180521131253) do

  create_table "favorites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "travel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["travel_id"], name: "index_favorites_on_travel_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "pictures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "url"
    t.bigint "travel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["travel_id"], name: "index_pictures_on_travel_id"
  end

  create_table "topics", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "destination"
    t.string "duration"
    t.string "deal"
    t.string "story"
    t.string "narrative"
    t.bigint "topic_id"
    t.integer "like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["topic_id"], name: "index_travels_on_topic_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favorites", "travels"
  add_foreign_key "favorites", "users"
  add_foreign_key "pictures", "travels"
  add_foreign_key "travels", "topics"
end
