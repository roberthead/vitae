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

ActiveRecord::Schema.define(version: 20151129012305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "annotations", force: :cascade do |t|
    t.integer  "citation_id"
    t.text     "body_html"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "annotations", ["citation_id"], name: "index_annotations_on_citation_id", using: :btree

  create_table "attributions", force: :cascade do |t|
    t.string   "name_last"
    t.string   "name_first"
    t.string   "name_middle"
    t.integer  "position"
    t.boolean  "editor"
    t.integer  "work_id"
    t.integer  "citation_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "attributions", ["citation_id"], name: "index_attributions_on_citation_id", using: :btree
  add_index "attributions", ["work_id"], name: "index_attributions_on_work_id", using: :btree

  create_table "citations", force: :cascade do |t|
    t.string   "work_name"
    t.string   "publication_name"
    t.string   "publication_volume"
    t.string   "publication_number"
    t.string   "publishing_location"
    t.string   "publishing_company"
    t.string   "publishing_flexdate"
    t.integer  "pages_start"
    t.integer  "pages_end"
    t.string   "medium"
    t.string   "fast_mla"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "works", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "fast_attribution_string"
    t.string   "medium"
    t.string   "materials"
    t.string   "process"
    t.string   "creation_flexdate"
    t.text     "artist_statement"
    t.text     "description"
    t.string   "collection_name"
    t.string   "collection_position"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_foreign_key "annotations", "citations"
  add_foreign_key "attributions", "citations"
  add_foreign_key "attributions", "works"
end
