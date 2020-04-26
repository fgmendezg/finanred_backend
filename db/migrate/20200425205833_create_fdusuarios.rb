class CreateFdusuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :fdusuarios do |t|
      t.string :email, limit: 100, :null => false, :unique => true
      t.string :num_identificacion, limit: 45, :unique => true
      t.string :primer_nombre, limit: 45
      t.string :segundo_nombre, limit: 45
      t.string :primer_apellido, limit: 45
      t.string :segundo_apellido, limit: 45
      t.string :departamento, limit: 45
      t.string :ciudad, limit: 45
      t.string :celular, limit: 45
      t.string :telefono, limit: 45
      t.string :ruta_docs, limit: 100, :unique => true
      t.boolean :tipo_empleado
      

      t.timestamps
    end
    #execute "ALTER TABLE fdusuarios ADD PRIMARY KEY (id_email);"
  end
end
