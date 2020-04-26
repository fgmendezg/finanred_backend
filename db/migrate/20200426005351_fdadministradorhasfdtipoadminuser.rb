class Fdadministradorhasfdtipoadminuser < ActiveRecord::Migration[6.0]
  def change
    create_table :fdadministradorhasfdtipoadminuser, id: false do |t|
      t.belongs_to :fdtipoadminuser
      t.belongs_to :fdadministrador
    end
  end
end
