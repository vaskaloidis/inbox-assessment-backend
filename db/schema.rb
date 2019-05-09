ActiveRecord::Schema.define(version: 2019_05_08_154609) do

  create_table "rentals", force: :cascade do |t|
    t.string "title"
    t.string "owner"
    t.string "city"
    t.string "category"
    t.float "bedrooms"
    t.string "image"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
