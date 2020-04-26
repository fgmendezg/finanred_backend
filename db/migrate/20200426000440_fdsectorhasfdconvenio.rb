class Fdsectorhasfdconvenio < ActiveRecord::Migration[6.0]
  def change
    create_table :fdsectorhasfdconvenios, id: false do |t|
      t.belongs_to :fdconvenio
      t.belongs_to :fdsector
    end
    #add_reference :fdsectorhasfdconvenios, :fdconvenio, foreign_key: true
    #add_reference :fdsectorhasfdconvenios, :fdsector, foreign_key: true
  end
end
