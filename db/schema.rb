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

ActiveRecord::Schema.define(version: 20141119205950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empresas", force: true do |t|
    t.string   "nombre_fantasia"
    t.string   "nombre_comercial"
    t.text     "correo"
    t.text     "web"
    t.integer  "telefono"
    t.text     "direccion"
    t.string   "region"
    t.text     "representante"
    t.string   "giro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas_usuarios", id: false, force: true do |t|
    t.integer "empresa_id"
    t.integer "usuario_id"
  end

  create_table "servicios", force: true do |t|
    t.string   "nombre"
    t.integer  "id_empresa"
    t.date     "creacion"
    t.string   "precio"
    t.boolean  "pagado"
    t.integer  "tareas_cantidad",   default: 0
    t.integer  "tareas_terminadas", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tareas", force: true do |t|
    t.string   "nombre"
    t.string   "estado"
    t.date     "creacion"
    t.date     "termino"
    t.text     "descripcion"
    t.integer  "servicio_id"
    t.integer  "ejecutante"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "usuario_id"
  end

  create_table "usuarios", force: true do |t|
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
    t.integer  "tipo_de_usuario",        default: 4,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre",                              null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

  create_table "usuraio_empresas", force: true do |t|
    t.integer  "id_cliente"
    t.integer  "id_empresa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
