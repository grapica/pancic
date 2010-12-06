# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101028135707) do

  create_table "areas", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "menu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "posts_count", :default => 0, :null => false
  end

  create_table "course_lists", :force => true do |t|
    t.string   "name"
    t.float    "buy"
    t.float    "sell"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "currency_file_name"
    t.string   "currency_content_type"
    t.integer  "currency_file_size"
    t.datetime "currency_updated_at"
  end

  create_table "hbanners", :force => true do |t|
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "himage_file_name"
    t.string   "himage_content_type"
    t.integer  "himage_file_size"
    t.datetime "himage_updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.string   "title"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "post_images", :force => true do |t|
    t.string   "title"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "top",         :default => false, :null => false
    t.string   "owner"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "place"
    t.string   "email"
  end

  create_table "questions", :force => true do |t|
    t.string   "issue"
    t.text     "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",        :limit => 64,  :null => false
    t.string   "email",           :limit => 128, :null => false
    t.string   "hashed_password", :limit => 64
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_login_at"
  end

  add_index "users", ["username"], :name => "index_users_on_username"

  create_table "vbanners", :force => true do |t|
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "vimage_file_name"
    t.string   "vimage_content_type"
    t.integer  "vimage_file_size"
    t.datetime "vimage_updated_at"
  end

end
