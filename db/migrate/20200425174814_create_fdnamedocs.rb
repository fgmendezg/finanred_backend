class CreateFdnamedocs < ActiveRecord::Migration[6.0]
  def change
    create_table :fdnamedocs do |t|
      t.string :namedoc, limit: 500, :null => false, :unique => true
      t.string :rute, limit: 45, :null => false
      t.string :name, limit: 45, :null => false

      t.timestamps
    end
    #execute "ALTER TABLE fdnamedocs ADD PRIMARY KEY (id_namedoc);"
  end
end
