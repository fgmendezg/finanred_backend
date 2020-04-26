class CreateFdconvenios < ActiveRecord::Migration[6.0]
  def change
    create_table :fdconvenios do |t|
      t.string :name_convenio, limit: 45

      t.timestamps
    end
  end
end
