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

ActiveRecord::Schema.define(version: 20141008234749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "equipment", force: true do |t|
    t.integer  "zone_id"
    t.integer  "quantity"
    t.integer  "years_installed"
    t.binary   "existing"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "equipment", ["zone_id"], name: "index_equipment_on_zone_id", using: :btree

  create_table "financials", force: true do |t|
    t.integer  "project_id"
    t.text     "description"
    t.boolean  "has_capex"
    t.integer  "cost_of_capital"
    t.string   "finance_type"
    t.integer  "finance_term"
    t.integer  "reinvest_rate"
    t.integer  "inflation"
    t.integer  "hourly_maintenance_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "financials", ["project_id"], name: "index_financials_on_project_id", using: :btree

  create_table "occupants", force: true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project"
  end

  add_index "occupants", ["project_id"], name: "index_occupants_on_project_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "address"
    t.string   "area"
    t.string   "city"
    t.string   "owner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_tables", force: true do |t|
    t.string   "name"
    t.datetime "w_day_begin"
    t.datetime "w_day_stop"
    t.datetime "w_end_start"
    t.datetime "w_end_stop"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "utility_rates", force: true do |t|
    t.string   "sch_name"
    t.datetime "peak_start"
    t.datetime "peak_stop"
    t.datetime "part_start"
    t.datetime "part_stop"
    t.integer  "customer_charge"
    t.integer  "summer_energy_peak"
    t.integer  "summer_energy_part"
    t.integer  "summer_energy_off"
    t.integer  "winter_energy_part"
    t.integer  "winter_energy_off"
    t.integer  "summer_demand"
    t.integer  "winter_demand"
    t.integer  "pdp_energy"
    t.integer  "pdp_demand"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zones", force: true do |t|
    t.string   "description"
    t.integer  "occupant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "zones", ["occupant_id"], name: "index_zones_on_occupant_id", using: :btree

end
