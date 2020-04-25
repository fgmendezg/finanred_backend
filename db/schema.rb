# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_25_214046) do

  create_table "fdnamedocs", primary_key: "id_namedoc", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "namedoc", limit: 45, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "id_email", limit: 100
    t.index ["id_email"], name: "id_email"
  end

  create_table "fdusuarios", primary_key: "id_email", id: :string, limit: 100, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "num_identificacion", limit: 45
    t.string "primer_nombre", limit: 45
    t.string "segundo_nombre", limit: 45
    t.string "primer_apellido", limit: 45
    t.string "segundo_apellido", limit: 45
    t.string "departamento", limit: 45
    t.string "ciudad", limit: 45
    t.string "celular", limit: 45
    t.string "telefono", limit: 45
    t.string "ruta_docs", limit: 100
    t.boolean "tipo_empleado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "fdnamedocs", "fdusuarios", column: "id_email", primary_key: "id_email", name: "fdnamedocs_ibfk_1"
end
