ActiveRecord::Schema[7.1].define(version: 2024_06_04_161447) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  
  create_table "recommendations", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.integer "category", default: 0, null: false
    t.string "price_range"
    t.float "price"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "location"
    t.string "address"
    t.float "longitude"
    t.float "latitude"
    t.boolean "kid_friendly"
    t.boolean "dog_friendly"
    t.boolean "outdoor"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

  create_table "search_results", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
end
