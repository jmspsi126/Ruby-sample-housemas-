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

ActiveRecord::Schema.define(version: 20150919204922) do

  create_table "franchise_contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsletters", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "source"
    t.string   "zip"
    t.string   "frannum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "request_inspections", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", force: true do |t|
    t.string   "slug"
    t.string   "title"
    t.string   "seo_title"
    t.string   "seo_description"
    t.string   "seo_keywords"
    t.text     "body"
    t.boolean  "is_featured"
    t.datetime "published_date"
    t.integer  "view_count"
    t.string   "author"
    t.string   "author_image"
    t.string   "header_image_home"
    t.string   "header_image"
    t.string   "article_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resources", ["author"], name: "index_resources_on_author", using: :btree
  add_index "resources", ["seo_description"], name: "index_resources_on_seo_description", using: :btree
  add_index "resources", ["seo_keywords"], name: "index_resources_on_seo_keywords", using: :btree
  add_index "resources", ["seo_title"], name: "index_resources_on_seo_title", using: :btree
  add_index "resources", ["slug"], name: "index_resources_on_slug", using: :btree
  add_index "resources", ["title"], name: "index_resources_on_title", using: :btree

  create_table "state_city_ips", force: true do |t|
    t.string   "ip_start"
    t.string   "ip_end"
    t.string   "country"
    t.string   "state"
    t.string   "state_abbrev"
    t.string   "city"
    t.string   "tested"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "state_city_ips", ["city"], name: "index_state_city_ips_on_city", using: :btree
  add_index "state_city_ips", ["country"], name: "index_state_city_ips_on_country", using: :btree
  add_index "state_city_ips", ["ip_end"], name: "index_state_city_ips_on_ip_end", using: :btree
  add_index "state_city_ips", ["ip_start"], name: "index_state_city_ips_on_ip_start", using: :btree
  add_index "state_city_ips", ["state"], name: "index_state_city_ips_on_state", using: :btree
  add_index "state_city_ips", ["state_abbrev"], name: "index_state_city_ips_on_state_abbrev", using: :btree
  add_index "state_city_ips", ["tested"], name: "index_state_city_ips_on_tested", using: :btree

  create_table "zee_ip_tests", force: true do |t|
    t.string   "test_ip"
    t.string   "ip_state"
    t.string   "ip_city"
    t.string   "geo_state"
    t.string   "geo_city"
    t.string   "zee_name"
    t.string   "zee_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "zee_ip_tests", ["geo_city"], name: "index_zee_ip_tests_on_geo_city", using: :btree
  add_index "zee_ip_tests", ["geo_state"], name: "index_zee_ip_tests_on_geo_state", using: :btree
  add_index "zee_ip_tests", ["test_ip"], name: "index_zee_ip_tests_on_test_ip", using: :btree
  add_index "zee_ip_tests", ["zee_name"], name: "index_zee_ip_tests_on_zee_name", using: :btree
  add_index "zee_ip_tests", ["zee_number"], name: "index_zee_ip_tests_on_zee_number", using: :btree

  create_table "zee_owned_territories", force: true do |t|
    t.string   "zee_name"
    t.string   "zee_number"
    t.string   "agreement_name"
    t.string   "state"
    t.string   "state_abbrev"
    t.string   "city"
    t.string   "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "zee_owned_territories", ["agreement_name"], name: "index_zee_owned_territories_on_agreement_name", using: :btree
  add_index "zee_owned_territories", ["city"], name: "index_zee_owned_territories_on_city", using: :btree
  add_index "zee_owned_territories", ["state"], name: "index_zee_owned_territories_on_state", using: :btree
  add_index "zee_owned_territories", ["state_abbrev"], name: "index_zee_owned_territories_on_state_abbrev", using: :btree
  add_index "zee_owned_territories", ["zee_name"], name: "index_zee_owned_territories_on_zee_name", using: :btree
  add_index "zee_owned_territories", ["zee_number"], name: "index_zee_owned_territories_on_zee_number", using: :btree
  add_index "zee_owned_territories", ["zipcode"], name: "index_zee_owned_territories_on_zipcode", using: :btree

end
