class AddSubjectIdToTeacherDetails < ActiveRecord::Migration[7.0]
  def change
    add_reference :teacher_details, :subject, foreign_key: true
  end
end
