class CreateFdconvenios < ActiveRecord::Migration[6.0]
  def change
    create_table :fdconvenios do |t|
      t.string :name_convenio, limit: 45, :null => false, :unique => true

      t.timestamps
    end
  end
end
