class AddClassRefToStudentDetail < ActiveRecord::Migration[7.0]
  def change
    add_reference :student_details, :class_detail,  foreign_key: true
  end
end
