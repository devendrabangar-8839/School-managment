class AddUserRefToTeacherDetails < ActiveRecord::Migration[7.0]
  def change
    add_reference :teacher_details, :user, foreign_key: true
  end
end

