# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_01_120016) do
  create_table "classes", force: :cascade do |t|
    t.string "sixth"
    t.string "seventh"
    t.string "eighth"
    t.string "nineth"
    t.string "tenth"
  end

  create_table "student_details", force: :cascade do |t|
    t.integer "roll_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_student_details_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "teacher_detail_id", null: false
    t.string "hindi"
    t.string "english"
    t.string "mathes"
    t.string "science"
    t.string "evm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_detail_id"], name: "index_subjects_on_teacher_detail_id"
  end

  create_table "teacher_details", force: :cascade do |t|
    t.datetime "date_of_birth"
    t.integer "salery"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_teacher_details_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "father_name"
    t.string "email_id"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.string "role"
  end

  add_foreign_key "student_details", "users"
  add_foreign_key "subjects", "teacher_details"
  add_foreign_key "teacher_details", "users"
end
