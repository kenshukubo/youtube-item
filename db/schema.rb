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

ActiveRecord::Schema.define(version: 2020_10_26_151342) do

  create_table "admin_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "ancestry"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "item_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "item_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_item_categories_on_category_id"
    t.index ["item_id"], name: "index_item_categories_on_item_id"
  end

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "post_id"
    t.string "name"
    t.string "image"
    t.integer "category"
    t.integer "price"
    t.text "amazon_url"
    t.text "rakuten_url"
    t.text "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "asin"
    t.index ["post_id"], name: "index_items_on_post_id"
  end

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "thumbnail"
    t.integer "category"
    t.bigint "youtuber_id"
    t.string "youtube_link"
    t.string "video_id"
    t.index ["youtuber_id"], name: "index_posts_on_youtuber_id"
  end

  create_table "youtubers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "category"
    t.text "image"
    t.string "channel_id"
  end

  add_foreign_key "item_categories", "categories"
  add_foreign_key "item_categories", "items"
  add_foreign_key "items", "posts"
  add_foreign_key "posts", "youtubers"
end
