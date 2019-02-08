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

ActiveRecord::Schema.define(version: 2019_02_06_154910) do

  create_table "fyp_posters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "p_id"
    t.string "p_title"
    t.string "student_name"
    t.string "student_id"
    t.string "supervisor_name"
    t.string "moderator_name"
    t.string "poster_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "keywords"
    t.string "p_id"
    t.string "student_name"
    t.string "student_id"
    t.string "supervisor_name"
    t.string "moderator_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
