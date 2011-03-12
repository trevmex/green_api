class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.text :description
      t.integer :rank
      t.string :password_salt
      t.string :password_hash
      t.boolean :public_profile
      t.boolean :advertising_enabled

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
