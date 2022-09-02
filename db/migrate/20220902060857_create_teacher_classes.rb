class CreateTeacherClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_classes do |t|
      t.belongs_to :class_detail
      t.belongs_to :teacher_detail

      t.timestamps
    end
  end
end
