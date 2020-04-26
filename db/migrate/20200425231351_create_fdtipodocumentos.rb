class CreateFdtipodocumentos < ActiveRecord::Migration[6.0]
  def change
    create_table :fdtipodocumentos do |t|
      t.string :name_documento, limit: 50

      t.timestamps
    end
  end
end
