class AddPasswordDigestToFdusuarios < ActiveRecord::Migration[6.0]
  def change
    add_column :fdusuarios, :password_digest, :string, limit: 100, null: true
  end
end
