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

ActiveRecord::Schema.define(version: 2020_02_12_073144) do

  create_table "items", force: :cascade do |t|
    t.integer "qunt"
    t.string "item_type"
    t.text "description"
    t.decimal "price"
    t.decimal "org_price", default: "0.0"
    t.decimal "tax", default: "0.0"
    t.decimal "delivery", default: "0.0"
    t.decimal "profit", default: "0.0"
    t.integer "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "vendor"
    t.decimal "sub_total", default: "0.0"
    t.index ["person_id"], name: "index_items_on_person_id"
  end

# Could not dump table "people" because of following StandardError
#   Unknown type 'decima' for column 'profit_per'

  add_foreign_key "items", "people"
end
