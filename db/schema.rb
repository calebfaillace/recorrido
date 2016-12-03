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

ActiveRecord::Schema.define(version: 20161125005439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
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

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "constructoras", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "correo"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "logo_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "exteriors", force: :cascade do |t|
    t.string   "caracteristica_exterior"
    t.integer  "proyecto_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "interiors", force: :cascade do |t|
    t.string   "caracteristica_interior"
    t.integer  "proyecto_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "personalizations", force: :cascade do |t|
    t.string   "caracteristica_personalizar"
    t.string   "pos_x"
    t.string   "pos_y"
    t.string   "objeto_file_name"
    t.string   "objeto_content_type"
    t.integer  "objeto_file_size"
    t.datetime "objeto_updated_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "proyectos", force: :cascade do |t|
    t.string   "tipo_inmueble"
    t.string   "ciudad"
    t.string   "direccion"
    t.string   "area_privada"
    t.string   "area_construida"
    t.string   "precio"
    t.string   "contacto"
    t.string   "image_url"
    t.string   "nombre"
    t.integer  "constructora_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "recorrido_virtuals", force: :cascade do |t|
    t.string   "pos_x"
    t.string   "post_y"
    t.integer  "proyecto_id"
    t.string   "recorrido_file_name"
    t.string   "recorrido_content_type"
    t.integer  "recorrido_file_size"
    t.datetime "recorrido_updated_at"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
