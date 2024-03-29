# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20120225160828) do

  create_table "channels", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.string   "oauth_token_secret"
    t.string   "consumer_key"
    t.string   "consumer_secret"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "transactions", :force => true do |t|
    t.string   "related_person_name"
    t.string   "related_person_email"
    t.string   "related_person_twitter"
    t.string   "related_person_facebook"
    t.string   "status"
    t.float    "amount"
    t.date     "end_date"
    t.date     "start_date"
    t.integer  "user_id"
    t.boolean  "notified"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",      :default => ""
    t.string   "user_name",  :default => ""
    t.boolean  "first_time", :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

end
