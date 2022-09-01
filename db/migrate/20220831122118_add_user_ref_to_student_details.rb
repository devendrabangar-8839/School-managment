class AddUserRefToStudentDetails < ActiveRecord::Migration[7.0]
  def change
    add_reference :student_details, :user, foreign_key: true
  end
end
