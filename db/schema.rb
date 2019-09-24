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

ActiveRecord::Schema.define(version: 20190924232800) do

  create_table "company", primary_key: "companyid", force: :cascade do |t|
    t.text     "companyname"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "facebook_page_connections", primary_key: "facebook_page_connection_id", force: :cascade do |t|
    t.integer  "userid",                              null: false
    t.text     "page_id",                             null: false
    t.text     "approval_status", default: "pending", null: false
    t.text     "url"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "organization", primary_key: "organizationid", force: :cascade do |t|
    t.text     "organizationname"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "region", primary_key: "regionid", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user", primary_key: "userid", force: :cascade do |t|
    t.text     "first_name"
    t.text     "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
