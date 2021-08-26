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

ActiveRecord::Schema.define(version: 2021_08_24_180754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gardens", force: :cascade do |t|
    t.integer "lenght"
    t.integer "width"
    t.integer "area"
    t.float "latitude"
    t.float "longitude"
    t.integer "temperature_max"
    t.integer "temperature_min"
    t.integer "sunshine"
    t.integer "shoe_size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.integer "temperature_max"
    t.integer "temperature_min"
    t.json "associations", default: {}
    t.integer "harvest_day_after_planting"
    t.integer "length"
    t.integer "width"
    t.integer "sunshine"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
  end

  create_table "squares", force: :cascade do |t|
    t.integer "length_fix"
    t.integer "width_fix"
    t.integer "position_x"
    t.integer "position_y"
    t.date "planting_date"
    t.date "harvest_date"
    t.boolean "active"
    t.bigint "garden_id", null: false
    t.bigint "plant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["garden_id"], name: "index_squares_on_garden_id"
    t.index ["plant_id"], name: "index_squares_on_plant_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "delay_after_creation"
    t.string "description"
    t.bigint "plant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_tasks_on_plant_id"
  end

  add_foreign_key "squares", "gardens"
  add_foreign_key "squares", "plants"
  add_foreign_key "tasks", "plants"
end
