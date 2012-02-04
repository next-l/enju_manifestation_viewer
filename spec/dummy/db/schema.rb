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

ActiveRecord::Schema.define(:version => 5) do

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
    t.decimal  "height"
    t.decimal  "width"
    t.decimal  "depth"
    t.string   "isbn"
    t.string   "isbn10"
    t.string   "wrong_isbn"
    t.string   "nbn"
    t.string   "lccn"
    t.string   "oclc_number"
    t.string   "issn"
    t.integer  "price"
    t.text     "fulltext"
    t.string   "volume_number_list"
    t.string   "issue_number_list"
    t.string   "serial_number_list"
    t.integer  "edition"
    t.text     "note"
    t.integer  "produces_count",           :default => 0,     :null => false
    t.integer  "exemplifies_count",        :default => 0,     :null => false
    t.integer  "embodies_count",           :default => 0,     :null => false
    t.integer  "work_has_subjects_count",  :default => 0,     :null => false
    t.boolean  "repository_content",       :default => false, :null => false
    t.integer  "lock_version",             :default => 0,     :null => false
    t.integer  "required_role_id",         :default => 1,     :null => false
    t.string   "state"
    t.integer  "required_score",           :default => 0,     :null => false
    t.integer  "frequency_id",             :default => 1,     :null => false
    t.boolean  "subscription_master",      :default => false, :null => false
  end

  add_index "manifestations", ["access_address"], :name => "index_manifestations_on_access_address"
  add_index "manifestations", ["carrier_type_id"], :name => "index_manifestations_on_carrier_type_id"
  add_index "manifestations", ["frequency_id"], :name => "index_manifestations_on_frequency_id"
  add_index "manifestations", ["isbn"], :name => "index_manifestations_on_isbn"
  add_index "manifestations", ["issn"], :name => "index_manifestations_on_issn"
  add_index "manifestations", ["lccn"], :name => "index_manifestations_on_lccn"
  add_index "manifestations", ["manifestation_identifier"], :name => "index_manifestations_on_manifestation_identifier"
  add_index "manifestations", ["nbn"], :name => "index_manifestations_on_nbn"
  add_index "manifestations", ["oclc_number"], :name => "index_manifestations_on_oclc_number"
  add_index "manifestations", ["required_role_id"], :name => "index_manifestations_on_required_role_id"
  add_index "manifestations", ["updated_at"], :name => "index_manifestations_on_updated_at"

end
