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

ActiveRecord::Schema[7.0].define(version: 2022_09_09_095843) do
  create_table "addresses", force: :cascade do |t|
    t.string "address"
    t.string "addressable_type"
    t.integer "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable"
  end

  create_table "class_details", force: :cascade do |t|
    t.string "sixth"
    t.string "seventh"
    t.string "eighth"
    t.string "nineth"
    t.string "tenth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_detail_id"
    t.index ["student_detail_id"], name: "index_class_details_on_student_detail_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "contact_no"
    t.string "contactable_type"
    t.integer "contactable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contactable_type", "contactable_id"], name: "index_contacts_on_contactable"
  end

  create_table "student_details", force: :cascade do |t|
    t.integer "roll_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "class_detail_id"
    t.index ["class_detail_id"], name: "index_student_details_on_class_detail_id"
    t.index ["user_id"], name: "index_student_details_on_user_id"
  end

  create_table "student_subjects", force: :cascade do |t|
    t.integer "subject_id"
    t.integer "student_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_detail_id"], name: "index_student_subjects_on_student_detail_id"
    t.index ["subject_id"], name: "index_student_subjects_on_subject_id"
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

  create_table "teacher_classes", force: :cascade do |t|
    t.integer "teacher_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "class_detail_id"
    t.index ["class_detail_id"], name: "index_teacher_classes_on_class_detail_id"
    t.index ["teacher_detail_id"], name: "index_teacher_classes_on_teacher_detail_id"
  end

  create_table "teacher_details", force: :cascade do |t|
    t.datetime "date_of_birth"
    t.integer "salery"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "subject_id"
    t.index ["subject_id"], name: "index_teacher_details_on_subject_id"
    t.index ["user_id"], name: "index_teacher_details_on_user_id"
  end

  create_table "teacher_students", force: :cascade do |t|
    t.integer "student_detail_id"
    t.integer "teacher_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_detail_id"], name: "index_teacher_students_on_student_detail_id"
    t.index ["teacher_detail_id"], name: "index_teacher_students_on_teacher_detail_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "father_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.string "role"
  end

  add_foreign_key "class_details", "student_details"
  add_foreign_key "student_details", "class_details"
  add_foreign_key "student_details", "users"
  add_foreign_key "subjects", "teacher_details"
  add_foreign_key "teacher_classes", "class_details"
  add_foreign_key "teacher_details", "subjects"
  add_foreign_key "teacher_details", "users"
end
