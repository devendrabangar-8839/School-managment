class TeacherStudent < ApplicationRecord
  belongs_to :student_detail
  belongs_to :teacher_detail
end
