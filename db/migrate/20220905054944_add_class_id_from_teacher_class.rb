class AddClassIdFromTeacherClass < ActiveRecord::Migration[7.0]
  def change
    add_reference :teacher_class, :class_detail, foreign_key: true
  end
end
