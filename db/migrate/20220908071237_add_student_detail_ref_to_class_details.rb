class AddStudentDetailRefToClassDetails < ActiveRecord::Migration[7.0]
  def change
    add_reference :class_details, :student_detail,   foreign_key: true
  end
end
