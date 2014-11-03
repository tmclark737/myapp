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

ActiveRecord::Schema.define(version: 20141103001611) do

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
    t.integer  "schedule_id"
    t.integer  "part_id"
  end

  add_index "equipment", ["part_id"], name: "index_equipment_on_part_id", using: :btree
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

  create_table "hvac_codes", force: true do |t|
    t.string   "description"
    t.string   "tag"
    t.string   "make"
    t.string   "model"
    t.string   "serial"
    t.string   "condition"
    t.integer  "hours_hvac_life"
    t.string   "cooling_capacity"
    t.string   "cooling_efficiency"
    t.string   "heating_capacity"
    t.string   "heating_efficiency"
    t.string   "refrigerant"
    t.string   "hours_description"
    t.boolean  "economizer_ysn"
    t.string   "filter_status"
    t.string   "thermostat_type"
    t.string   "heat_setpoint"
    t.string   "cool_setpoint"
    t.integer  "replace_equip_cost"
    t.decimal  "replace_install_hours"
    t.string   "pic_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hvacs", force: true do |t|
    t.integer  "kw_saved"
    t.integer  "kwh_saved"
    t.integer  "therm_saved"
    t.integer  "hrs_to_replace"
    t.integer  "hvac_code_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hvacs", ["hvac_code_id"], name: "index_hvacs_on_hvac_code_id", using: :btree

  create_table "incentives", force: true do |t|
    t.string   "description"
    t.integer  "kwh"
    t.integer  "kw"
    t.integer  "qty"
    t.decimal  "max_percent"
    t.integer  "addon_option_qty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "light_codes", force: true do |t|
    t.date     "check_date"
    t.string   "fixture_description"
    t.string   "fixture_code"
    t.string   "lamp_code"
    t.integer  "lamps_per_fixture"
    t.float    "w_per_lamp"
    t.string   "ballast"
    t.float    "ballast_factor"
    t.float    "kw_per_fixture"
    t.string   "note"
    t.integer  "design_lumens"
    t.integer  "cri"
    t.integer  "lamp_life_hours"
    t.integer  "ballast_life_hours"
    t.string   "base_type"
    t.string   "lamp_type"
    t.integer  "relamp_glass_cost"
    t.float    "relamp_install_hours"
    t.integer  "replace_ballast_cost"
    t.float    "reballast_install_hours"
    t.string   "pic_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lights", force: true do |t|
    t.integer  "space_type_id"
    t.integer  "light_code_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "occ_sensor_base"
  end

  add_index "lights", ["light_code_id"], name: "index_lights_on_light_code_id", using: :btree
  add_index "lights", ["space_type_id"], name: "index_lights_on_space_type_id", using: :btree

  create_table "occ_sensors", force: true do |t|
    t.string   "space_type"
    t.float    "savings_pct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "occupants", force: true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project"
    t.integer  "utility_rate_id"
  end

  add_index "occupants", ["project_id"], name: "index_occupants_on_project_id", using: :btree

  create_table "parts", force: true do |t|
    t.integer  "part_info_type"
    t.integer  "cost"
    t.string   "purchase_url"
    t.string   "picture_url"
    t.integer  "incentive_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "install_hrs"
    t.integer  "light_id"
    t.integer  "hvac_id"
  end

  add_index "parts", ["hvac_id"], name: "index_parts_on_hvac_id", using: :btree
  add_index "parts", ["incentive_id"], name: "index_parts_on_incentive_id", using: :btree
  add_index "parts", ["light_id"], name: "index_parts_on_light_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "address"
    t.string   "area"
    t.string   "city"
    t.string   "owner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.string   "name"
    t.datetime "w_day_begin"
    t.datetime "w_day_stop"
    t.datetime "w_end_begin"
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
    t.datetime "peak_begin"
    t.datetime "peak_stop"
    t.datetime "part_begin"
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
