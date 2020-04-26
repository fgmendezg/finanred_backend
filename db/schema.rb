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

ActiveRecord::Schema.define(version: 2020_04_26_010025) do

  create_table "fdadministradorhasfdtipoadminuser", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "fdtipoadminuser_id"
    t.bigint "fdadministrador_id"
    t.index ["fdadministrador_id"], name: "index_fdadministradorhasfdtipoadminuser_on_fdadministrador_id"
    t.index ["fdtipoadminuser_id"], name: "index_fdadministradorhasfdtipoadminuser_on_fdtipoadminuser_id"
  end

  create_table "fdadministradors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name_user", limit: 45
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fdconvenios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name_convenio", limit: 45
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fdnamedocs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "namedoc", limit: 45, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "fdusuario_id", null: false
    t.index ["fdusuario_id"], name: "index_fdnamedocs_on_fdusuario_id"
  end

  create_table "fdsectorhasfdconvenios", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "fdconvenio_id"
    t.bigint "fdsector_id"
    t.index ["fdconvenio_id"], name: "index_fdsectorhasfdconvenios_on_fdconvenio_id"
    t.index ["fdsector_id"], name: "index_fdsectorhasfdconvenios_on_fdsector_id"
  end

  create_table "fdsectors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name_sector", limit: 45
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fdtipoadminusers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "tipoadminuser", limit: 45
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fdtipodocumentos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name_documento", limit: 50
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fdusuarios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", limit: 100, null: false
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
    t.bigint "fdtipodocumento_id"
    t.bigint "fdconvenio_id"
    t.bigint "fdsector_id"
    t.index ["fdconvenio_id"], name: "index_fdusuarios_on_fdconvenio_id"
    t.index ["fdsector_id"], name: "index_fdusuarios_on_fdsector_id"
    t.index ["fdtipodocumento_id"], name: "index_fdusuarios_on_fdtipodocumento_id"
  end

  create_table "fdusuarioshasfdadministradores", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "fdadministrador_id"
    t.bigint "fdusuario_id"
    t.index ["fdadministrador_id"], name: "index_fdusuarioshasfdadministradores_on_fdadministrador_id"
    t.index ["fdusuario_id"], name: "index_fdusuarioshasfdadministradores_on_fdusuario_id"
  end

  add_foreign_key "fdnamedocs", "fdusuarios"
  add_foreign_key "fdusuarios", "fdconvenios"
  add_foreign_key "fdusuarios", "fdsectors"
  add_foreign_key "fdusuarios", "fdtipodocumentos"
end
