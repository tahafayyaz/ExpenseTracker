class AddDeviseToManagers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :managers do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
    end
    add_index :managers, :email,                unique: true
    add_index :managers, :reset_password_token, unique: true
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
