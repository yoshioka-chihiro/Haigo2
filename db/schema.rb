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

ActiveRecord::Schema.define(version: 2022_08_01_150221) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "additives", force: :cascade do |t|
    t.string "name", null: false
    t.integer "type", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "allergies", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "is_specific", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ban_end_users", force: :cascade do |t|
    t.integer "end_user_id", null: false
    t.integer "material_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["end_user_id"], name: "index_ban_end_users_on_end_user_id"
    t.index ["material_id"], name: "index_ban_end_users_on_material_id"
  end

  create_table "ban_wholesales", force: :cascade do |t|
    t.integer "wholesale_id", null: false
    t.integer "material_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["material_id"], name: "index_ban_wholesales_on_material_id"
    t.index ["wholesale_id"], name: "index_ban_wholesales_on_wholesale_id"
  end

  create_table "end_users", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "material_additives", force: :cascade do |t|
    t.integer "material_id", null: false
    t.integer "additive_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["additive_id"], name: "index_material_additives_on_additive_id"
    t.index ["material_id"], name: "index_material_additives_on_material_id"
  end

  create_table "material_allergies", force: :cascade do |t|
    t.integer "material_id", null: false
    t.integer "allergy_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["allergy_id"], name: "index_material_allergies_on_allergy_id"
    t.index ["material_id"], name: "index_material_allergies_on_material_id"
  end

  create_table "material_genres", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "materials", force: :cascade do |t|
    t.integer "material_genre_id"
    t.string "name", null: false
    t.string "distributor", null: false
    t.string "manufacturer", null: false
    t.string "country_of_origin", null: false
    t.string "packing", null: false
    t.string "preservation_method", null: false
    t.float "price", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["material_genre_id"], name: "index_materials_on_material_genre_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name", null: false
    t.string "number", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "nutritional_components", force: :cascade do |t|
    t.string "name", null: false
    t.float "amount", null: false
    t.integer "material_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["material_id"], name: "index_nutritional_components_on_material_id"
  end

  create_table "recipe_genres", force: :cascade do |t|
    t.integer "allergy_id", null: false
    t.integer "recipe_id", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["allergy_id"], name: "index_recipe_genres_on_allergy_id"
    t.index ["recipe_id"], name: "index_recipe_genres_on_recipe_id"
  end

  create_table "recipe_materials", force: :cascade do |t|
    t.integer "material_id", null: false
    t.integer "recipe_id", null: false
    t.float "amount", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["material_id"], name: "index_recipe_materials_on_material_id"
    t.index ["recipe_id"], name: "index_recipe_materials_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "end_user_id", null: false
    t.integer "wholesale_id", null: false
    t.integer "member_id", null: false
    t.string "for_use", null: false
    t.float "manufacturing_cost", null: false
    t.float "material_cost", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["end_user_id"], name: "index_recipes_on_end_user_id"
    t.index ["member_id"], name: "index_recipes_on_member_id"
    t.index ["wholesale_id"], name: "index_recipes_on_wholesale_id"
  end

  create_table "wholesales", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "ban_end_users", "end_users"
  add_foreign_key "ban_end_users", "materials"
  add_foreign_key "ban_wholesales", "materials"
  add_foreign_key "ban_wholesales", "wholesales"
  add_foreign_key "material_additives", "additives"
  add_foreign_key "material_additives", "materials"
  add_foreign_key "material_allergies", "allergies"
  add_foreign_key "material_allergies", "materials"
  add_foreign_key "materials", "material_genres"
  add_foreign_key "nutritional_components", "materials"
  add_foreign_key "recipe_genres", "allergies"
  add_foreign_key "recipe_genres", "recipes"
  add_foreign_key "recipe_materials", "materials"
  add_foreign_key "recipe_materials", "recipes"
  add_foreign_key "recipes", "end_users"
  add_foreign_key "recipes", "members"
  add_foreign_key "recipes", "wholesales"
end
