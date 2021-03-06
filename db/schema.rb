# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141018003419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entities", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entities", ["category_id"], name: "index_entities_on_category_id", using: :btree

  create_table "entities_scales", force: true do |t|
    t.integer  "score"
    t.integer  "total"
    t.integer  "entity_id"
    t.integer  "scale_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entities_scales", ["entity_id"], name: "index_entities_scales_on_entity_id", using: :btree
  add_index "entities_scales", ["scale_id"], name: "index_entities_scales_on_scale_id", using: :btree

  create_table "scales", force: true do |t|
    t.string   "name"
    t.string   "positive"
    t.string   "negative"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scales", ["category_id"], name: "index_scales_on_category_id", using: :btree

end
