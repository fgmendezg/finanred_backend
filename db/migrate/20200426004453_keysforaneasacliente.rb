class Keysforaneasacliente < ActiveRecord::Migration[6.0]
  def change
    add_reference :fdusuarios, :fdconvenio, null: true, foreign_key: true
    add_reference :fdusuarios, :fdsector, null: true, foreign_key: true
  end
end
