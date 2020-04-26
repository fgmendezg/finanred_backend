class CreateFdtipodocumentos < ActiveRecord::Migration[6.0]
  def change
    create_table :fdtipodocumentos do |t|
      t.string :name_documento, limit: 50, :null => false, :unique => true

      t.timestamps
    end
  end
end
