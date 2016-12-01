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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161201144554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_type_id"
    t.string   "uspto_code"
    t.string   "ipc_code"
    t.string   "cpc_code"
    t.boolean  "active"
    t.integer  "parent_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "contact_requests", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",      null: false
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contact_requests", ["email"], name: "index_contact_requests_on_email", unique: true, using: :btree

  create_table "members", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "prefix"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.integer  "ssn4"
    t.integer  "pricing_tier_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true, using: :btree
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true, using: :btree

  create_table "mentors", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "approved"
    t.boolean  "in_review"
    t.integer  "category_id"
    t.integer  "specialty_id"
    t.string   "uuid"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "patent_searches", force: :cascade do |t|
    t.string   "terms"
    t.string   "fields"
    t.integer  "user_id"
    t.integer  "results_doc_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "uuid"
  end

  create_table "project_profiles", force: :cascade do |t|
    t.integer  "reasons"
    t.boolean  "disclosure_flag"
    t.integer  "number_of_inventors"
    t.boolean  "multi_creator"
    t.text     "purpose"
    t.text     "improvement_1"
    t.text     "improvement_2"
    t.text     "gaps"
    t.text     "improve_gaps"
    t.string   "profile_steps_doc_id"
    t.string   "component_relationships_doc_id"
    t.string   "project_requirements_doc_id"
    t.string   "working_detail_doc_id"
    t.text     "how_to"
    t.text     "necessities_options"
    t.text     "statement_of_use"
    t.string   "bubba_story_doc_id"
    t.boolean  "active"
    t.string   "upid"
    t.string   "idyuh_id"
    t.integer  "project_id"
    t.integer  "member_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.text     "problem"
    t.text     "solution"
    t.text     "improvement_detail"
    t.integer  "step"
    t.string   "filing_purpose"
    t.integer  "inventor_count"
    t.boolean  "government_sanctioned"
    t.string   "domain"
    t.integer  "search_results_ref_id"
    t.text     "solution_detail"
    t.string   "uniqueness"
  end

  add_index "project_profiles", ["bubba_story_doc_id"], name: "index_project_profiles_on_bubba_story_doc_id", using: :btree
  add_index "project_profiles", ["component_relationships_doc_id"], name: "index_project_profiles_on_component_relationships_doc_id", using: :btree
  add_index "project_profiles", ["member_id"], name: "index_project_profiles_on_member_id", using: :btree
  add_index "project_profiles", ["multi_creator"], name: "index_project_profiles_on_multi_creator", using: :btree
  add_index "project_profiles", ["profile_steps_doc_id"], name: "index_project_profiles_on_profile_steps_doc_id", using: :btree
  add_index "project_profiles", ["project_id"], name: "index_project_profiles_on_project_id", using: :btree
  add_index "project_profiles", ["project_requirements_doc_id"], name: "index_project_profiles_on_project_requirements_doc_id", using: :btree
  add_index "project_profiles", ["working_detail_doc_id"], name: "index_project_profiles_on_working_detail_doc_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.integer  "project_type_id"
    t.string   "title"
    t.integer  "category_id"
    t.integer  "member_id"
    t.boolean  "active"
    t.boolean  "approved"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.text     "solution"
    t.text     "problem"
    t.text     "improvement_detail"
  end

end
