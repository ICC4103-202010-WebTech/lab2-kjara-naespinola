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

ActiveRecord::Schema.define(version: 2020_04_06_052803) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.string "password"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "start_date"
    t.integer "event_venue_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_venue_id"], name: "index_events_on_event_venue_id"
  end

  create_table "order_tickets", force: :cascade do |t|
    t.integer "ticket_type_id", null: false
    t.integer "quantity"
    t.integer "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_order_tickets_on_order_id"
    t.index ["ticket_type_id"], name: "index_order_tickets_on_ticket_type_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "number_order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "ticket_types", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_ticket_types_on_event_id"
  end

  add_foreign_key "events", "event_venues"
  add_foreign_key "order_tickets", "orders"
  add_foreign_key "order_tickets", "ticket_types"
  add_foreign_key "orders", "customers"
  add_foreign_key "ticket_types", "events"
end
