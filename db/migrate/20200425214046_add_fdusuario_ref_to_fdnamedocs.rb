class AddFdusuarioRefToFdnamedocs < ActiveRecord::Migration[6.0]
  def change
    #add_reference :fdnamedocs, :fdusuario, null: false, foreign_key: true, column: :id_email
    #add_foreign_key :fdnamedocs, :fdusuario, column: :id_email
  end
  execute "ALTER TABLE fdnamedocs ADD COLUMN id_email varchar(100);"
  execute "ALTER TABLE fdnamedocs ADD FOREIGN KEY (id_email) REFERENCES fdusuarios(id_email);"
end
