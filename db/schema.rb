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

ActiveRecord::Schema.define(:version => 20130127140647) do

  create_table "answers", :force => true do |t|
    t.string   "answer"
    t.string   "letter"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "answers", ["question_id"], :name => "index_answers_on_question_id"

  create_table "awards", :force => true do |t|
    t.string   "name"
    t.string   "order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "name"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "members", ["team_id"], :name => "index_members_on_team_id"

  create_table "questions", :force => true do |t|
    t.string   "description"
    t.integer  "score"
    t.string   "letter"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "questions", ["category_id"], :name => "index_questions_on_category_id"

  create_table "results", :force => true do |t|
    t.integer  "answer_id"
    t.integer  "question_id"
    t.integer  "team_id"
    t.boolean  "ok"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "results", ["answer_id"], :name => "index_results_on_answer_id"
  add_index "results", ["question_id"], :name => "index_results_on_question_id"
  add_index "results", ["team_id"], :name => "index_results_on_team_id"

  create_table "rols", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "score"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "rol_id"
    t.string   "name"
    t.string   "email"
    t.string   "pasword"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["rol_id"], :name => "index_users_on_rol_id"

  create_table "winners", :force => true do |t|
    t.string   "nameteam"
    t.string   "namemember"
    t.integer  "score"
    t.date     "dategame"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
