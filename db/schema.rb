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

ActiveRecord::Schema.define(version: 20140621180218) do

  create_table "contests", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "start_date"
    t.string   "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipos", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "equipos", ["user_id"], name: "index_equipos_on_user_id"

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "name_of_sponsor"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "state"
    t.integer  "contest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["contest_id"], name: "index_events_on_contest_id"

  create_table "proyectos", force: true do |t|
    t.string   "name"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "equipo_id"
  end

  add_index "proyectos", ["equipo_id"], name: "index_proyectos_on_equipo_id"

  create_table "rols", force: true do |t|
    t.string   "name"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rol_id"
    t.string   "name"
    t.string   "lastname"
    t.integer  "telf"
    t.integer  "equipo_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["equipo_id"], name: "index_users_on_equipo_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["rol_id"], name: "index_users_on_rol_id"

end
