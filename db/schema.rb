# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_26_224126) do

  create_table "image_links", force: :cascade do |t|
    t.integer "user_id"
    t.integer "spot_id"
    t.string "image_link"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "spot_id"
    t.integer "user_id"
    t.float "rating"
    t.text "description"
  end

  create_table "spots", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.float "longitude"
    t.float "latitude"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
