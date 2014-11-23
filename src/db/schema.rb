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

ActiveRecord::Schema.define(version: 20141123100338) do

  create_table "branca", force: true do |t|
    t.string   "nome"
    t.string   "nome_unita"
    t.string   "descrizione"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "censimento", force: true do |t|
    t.integer  "anno"
    t.integer  "socio_id"
    t.integer  "unita_id"
    t.boolean  "capo_gruppo"
    t.boolean  "vice_capo_gruppo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "censimento", ["socio_id"], name: "index_censimento_on_socio_id"
  add_index "censimento", ["unita_id"], name: "index_censimento_on_unita_id"

  create_table "distintivo", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "livello"
    t.boolean  "specialita"
  end

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "notizia", force: true do |t|
    t.string   "title"
    t.string   "text"
    t.string   "string"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notizia_unita", id: false, force: true do |t|
    t.integer "notizia_id"
    t.integer "unita_id"
  end

  create_table "redactor_assets", force: true do |t|
    t.integer  "socio_id"
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "redactor_assets", ["assetable_type", "assetable_id"], name: "idx_redactor_assetable"
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_redactor_assetable_type"

  create_table "servizio", force: true do |t|
    t.integer  "socio_id"
    t.integer  "unita_id"
    t.boolean  "capo"
    t.integer  "anno"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "servizio", ["socio_id"], name: "index_servizio_on_socio_id"
  add_index "servizio", ["unita_id"], name: "index_servizio_on_unita_id"

  create_table "socio", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "username",               default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome"
    t.string   "cognome"
    t.string   "slug"
  end

  add_index "socio", ["reset_password_token"], name: "index_socio_on_reset_password_token", unique: true
  add_index "socio", ["username"], name: "index_socio_on_username", unique: true

  create_table "unita", force: true do |t|
    t.string   "nome"
    t.integer  "branca_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "unita", ["branca_id"], name: "index_unita_on_branca_id"
  add_index "unita", ["nome"], name: "index_unita_on_nome", unique: true

end
