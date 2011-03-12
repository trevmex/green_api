# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110312164908) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.text     "impact"
    t.string   "name"
    t.integer  "karma_points"
    t.integer  "charisma_points"
    t.integer  "green_points"
    t.integer  "simplicity_points"
    t.text     "links"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_items", :force => true do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_tasks", :force => true do |t|
    t.string   "status"
    t.datetime "due_date"
    t.datetime "completion_date"
    t.integer  "user_id"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "rank"
    t.string   "password_salt"
    t.string   "password_hash"
    t.boolean  "public_profile"
    t.boolean  "advertising_enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
