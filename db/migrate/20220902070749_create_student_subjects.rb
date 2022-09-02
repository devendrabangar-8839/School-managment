class CreateStudentSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :student_subjects do |t|
      t.belongs_to :subject
      t.belongs_to :student_detail

      t.timestamps
    end
  end
end
