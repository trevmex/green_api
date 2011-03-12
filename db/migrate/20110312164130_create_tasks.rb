class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.text :impact
      t.string :name
      t.integer :karma_points
      t.integer :charisma_points
      t.integer :green_points
      t.integer :simplicity_points
      t.text :links
      t.references :category

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
