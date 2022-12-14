# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_27_100805) do

  create_table "marks", force: :cascade do |t|
    t.integer "student_id"
    t.integer "m1"
    t.integer "m2"
    t.integer "m3"
    t.integer "m4"
    t.integer "m5"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "total"
    t.integer "students_id"
    t.index ["students_id"], name: "index_marks_on_students_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "student_id"
    t.string "name"
    t.integer "age"
    t.string "address"
    t.integer "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "marks", "students", column: "students_id"
end
