class CreateUserTasks < ActiveRecord::Migration
  def self.up
    create_table :user_tasks do |t|
      t.string :status
      t.datetime :due_date
      t.datetime :completion_date
      t.references :user
      t.references :task

      t.timestamps
    end
  end

  def self.down
    drop_table :user_tasks
  end
end
