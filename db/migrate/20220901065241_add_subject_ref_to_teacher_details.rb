class AddSubjectRefToTeacherDetails < ActiveRecord::Migration[7.0]
  def change
    # add_reference :subjects, :teacher_details, foreign_key: true
    # add_column :subjects, :teacher_details_id, :integer
    add_reference :subjects, :teacher_detail, foreign_key: true

  end
end
