class AddUserRefToTeacherDetails < ActiveRecord::Migration[7.0]
  def change
    add_reference :teacher_detail, :user, foreign_key: true
  end
end

