class CreateFdnamedocs < ActiveRecord::Migration[6.0]
  def change
    create_table :fdnamedocs do |t|
      t.string :namedoc, limit: 45, :null => false

      t.timestamps
    end
    #execute "ALTER TABLE fdnamedocs ADD PRIMARY KEY (id_namedoc);"
  end
end
