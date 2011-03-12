class Task < ActiveRecord::Base
  belongs_to :category
  has_many :user_tasks
  has_many :users, :through => :user_tasks
end
