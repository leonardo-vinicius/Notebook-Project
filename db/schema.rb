# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_07_14_014546) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "notebooks", force: :cascade do |t|
    t.string "equipment_identifier"
    t.string "serial_number"
    t.string "asset_number"
    t.date "manufacture_date"
    t.text "description"
    t.string "brand"
    t.string "model"
    t.date "purchase_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_number"], name: "index_notebooks_on_asset_number", unique: true
    t.index ["equipment_identifier"], name: "index_notebooks_on_equipment_identifier", unique: true
    t.index ["serial_number"], name: "index_notebooks_on_serial_number", unique: true
  end
end
