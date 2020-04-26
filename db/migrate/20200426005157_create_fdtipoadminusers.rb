class CreateFdtipoadminusers < ActiveRecord::Migration[6.0]
  def change
    create_table :fdtipoadminusers do |t|
      t.string :tipoadminuser, limit: 45

      t.timestamps
    end
  end
end
