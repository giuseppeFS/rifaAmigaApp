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

ActiveRecord::Schema.define(version: 20191020225357) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.boolean "capital"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutions", force: :cascade do |t|
    t.string "cnpj"
    t.string "corporate_name"
    t.string "qualification"
    t.string "state_registration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "raffles", force: :cascade do |t|
    t.integer "institution_idd"
    t.integer "category_idd"
    t.string "descripiond"
    t.float "valued"
    t.datetime "draw_dated"
    t.string "prized"
    t.integer "statusd"
    t.datetime "created_atd"
    t.datetime "updated_atd"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "acronym"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "raffle_idd"
    t.integer "numberd"
    t.integer "owner_idd"
    t.datetime "purchase_dated"
    t.float "valued"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "cpf"
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "address"
    t.string "number"
    t.string "complement"
    t.string "neighborhood"
    t.string "zipCode"
    t.string "ddd_phone"
    t.string "phone_number"
    t.string "ddd_cellphone"
    t.string "cellphone_number"
    t.string "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "password_digest"
  end

  create_table "wallets", force: :cascade do |t|
    t.integer "user_id"
    t.float "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
