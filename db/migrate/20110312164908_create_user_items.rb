class CreateUserItems < ActiveRecord::Migration
  def self.up
    create_table :user_items do |t|
      t.references :user
      t.references :item

      t.timestamps
    end
  end

  def self.down
    drop_table :user_items
  end
end
