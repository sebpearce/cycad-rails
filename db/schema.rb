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

ActiveRecord::Schema.define(version: 20161001101400) do

  create_table "expense_categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "expense_transaction_to_tags", force: :cascade do |t|
    t.integer  "expense_transaction_id"
    t.integer  "tag_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["expense_transaction_id"], name: "index_expense_transaction_to_tags_on_expense_transaction_id"
    t.index ["tag_id"], name: "index_expense_transaction_to_tags_on_tag_id"
  end

  create_table "expense_transactions", force: :cascade do |t|
    t.date    "date"
    t.decimal "amount",              precision: 8, scale: 2
    t.text    "description"
    t.integer "expense_category_id"
    t.index ["expense_category_id"], name: "index_expense_transactions_on_expense_category_id"
  end

  create_table "income_categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "income_transaction_to_tags", force: :cascade do |t|
    t.integer  "income_transaction_id"
    t.integer  "tag_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["income_transaction_id"], name: "index_income_transaction_to_tags_on_income_transaction_id"
    t.index ["tag_id"], name: "index_income_transaction_to_tags_on_tag_id"
  end

  create_table "income_transactions", force: :cascade do |t|
    t.date    "date"
    t.decimal "amount",             precision: 8, scale: 2
    t.text    "description"
    t.integer "income_category_id"
    t.index ["income_category_id"], name: "index_income_transactions_on_income_category_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
  end

end
