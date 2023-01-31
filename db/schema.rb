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

ActiveRecord::Schema[7.0].define(version: 2023_01_31_140343) do
  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 1
  end

  create_table "movements", force: :cascade do |t|
    t.string "role"
    t.integer "client_id", null: false
    t.string "value"
    t.string "date"
    t.integer "client_to_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_movements_on_client_id"
    t.index ["client_to_id"], name: "index_movements_on_client_to_id"
  end

  add_foreign_key "movements", "client_tos"
  add_foreign_key "movements", "clients"
end
