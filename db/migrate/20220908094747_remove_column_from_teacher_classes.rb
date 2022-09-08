class RemoveColumnFromTeacherClasses < ActiveRecord::Migration[7.0]
  def change
     remove_column :teacher_classes, :class_detail, :integer
     remove_column :teacher_classes, :class_details, :integer
  end
end
