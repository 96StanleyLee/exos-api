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

ActiveRecord::Schema.define(version: 2020_06_29_222655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "heros", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.string "image"
    t.string "element"
    t.string "regen"
    t.string "hero_type"
    t.string "rarity"
    t.string "jp_only"
  end

  create_table "stats", force: :cascade do |t|
    t.integer "hp"
    t.integer "atk"
    t.integer "def"
    t.integer "speed"
    t.bigint "hero_id", null: false
    t.index ["hero_id"], name: "index_stats_on_hero_id"
  end

  add_foreign_key "stats", "heros"
end
