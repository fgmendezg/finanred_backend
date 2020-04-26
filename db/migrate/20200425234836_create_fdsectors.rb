class CreateFdsectors < ActiveRecord::Migration[6.0]
  def change
    create_table :fdsectors do |t|
      t.string :name_sector, limit: 45

      t.timestamps
    end
  end
end
