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

ActiveRecord::Schema.define(:version => 20130506175834) do

  create_table "identifier_types", :force => true do |t|
    t.string   "name"
    t.text     "display_name"
    t.text     "note"
    t.integer  "position"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "identifiers", :force => true do |t|
    t.string   "body",               :null => false
    t.integer  "identifier_type_id", :null => false
    t.integer  "manifestation_id"
    t.boolean  "primary"
    t.integer  "position"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "identifiers", ["body", "identifier_type_id"], :name => "index_identifiers_on_body_and_identifier_type_id"

  create_table "manifestations", :force => true do |t|
    t.text     "original_title",                              :null => false
    t.text     "title_alternative"
    t.text     "title_transcription"
    t.string   "classification_number"
    t.string   "manifestation_identifier"
    t.datetime "date_of_publication"
    t.datetime "copyright_date"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.datetime "deleted_at"
    t.string   "access_address"
    t.integer  "language_id",              :default => 1,     :null => false
    t.integer  "carrier_type_id",          :default => 1,     :null => false
    t.integer  "extent_id",                :default => 1,     :null => false
    t.integer  "start_page"
    t.integer  "end_page"
    t.integer  "height"
    t.integer  "width"
    t.integer  "depth"
    t.integer  "price"
    t.text     "fulltext"
    t.string   "volume_number_string"
    t.string   "issue_number_string"
    t.string   "serial_number_string"
    t.integer  "edition"
    t.text     "note"
    t.boolean  "repository_content",       :default => false, :null => false
    t.integer  "lock_version",             :default => 0,     :null => false
    t.integer  "required_role_id",         :default => 1,     :null => false
    t.string   "state"
    t.integer  "required_score",           :default => 0,     :null => false
    t.integer  "frequency_id",             :default => 1,     :null => false
    t.boolean  "subscription_master",      :default => false, :null => false
    t.integer  "volume_number"
    t.integer  "issue_number"
    t.integer  "serial_number"
    t.string   "pub_date"
    t.boolean  "periodical"
  end

  add_index "manifestations", ["access_address"], :name => "index_manifestations_on_access_address"
  add_index "manifestations", ["date_of_publication"], :name => "index_manifestations_on_date_of_publication"
  add_index "manifestations", ["manifestation_identifier"], :name => "index_manifestations_on_manifestation_identifier"
  add_index "manifestations", ["updated_at"], :name => "index_manifestations_on_updated_at"

end
