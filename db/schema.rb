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

ActiveRecord::Schema[7.0].define(version: 2022_07_05_070418) do
  create_table "authors", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "author_city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", charset: "utf8mb4", force: :cascade do |t|
    t.string "book_name"
    t.integer "pages"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "author_id", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "clothes", charset: "utf8mb4", force: :cascade do |t|
    t.string "cloth"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "author_id"
    t.index ["author_id"], name: "index_clothes_on_author_id"
  end

  create_table "novels", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.integer "pages"
    t.bigint "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_novels_on_author_id"
  end

  add_foreign_key "books", "authors"
  add_foreign_key "novels", "authors"
end
