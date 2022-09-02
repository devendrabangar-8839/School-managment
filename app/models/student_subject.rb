class StudentSubject < ApplicationRecord
  belongs_to :subject
  belongs_to :student_detail
end
