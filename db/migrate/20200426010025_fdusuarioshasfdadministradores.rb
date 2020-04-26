class Fdusuarioshasfdadministradores < ActiveRecord::Migration[6.0]
  def change
    create_table :fdusuarioshasfdadministradores, id: false do |t|
      t.belongs_to :fdadministrador
      t.belongs_to :fdusuario
    end
  end
end
