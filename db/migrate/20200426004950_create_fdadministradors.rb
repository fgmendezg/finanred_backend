class CreateFdadministradors < ActiveRecord::Migration[6.0]
  def change
    create_table :fdadministradors do |t|
      t.string :name_user, limit: 45, :null => false, :unique => true

      t.timestamps
    end
  end
end
