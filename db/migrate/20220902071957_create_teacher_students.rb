class CreateTeacherStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_students do |t|
      t.belongs_to :student_detail
      t.belongs_to :teacher_detail

      t.timestamps
    end
  end
end
