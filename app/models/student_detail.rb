class StudentDetail < ApplicationRecord
  belongs_to :user 
  has_many :student_subjects
  has_many :subjects, :through => :student_subjects

  has_many :teacher_students
  has_many :teacher_details, :through => :teacher_students

  has_many :addresses, as: :addressable
  has_many :contacts, as: :contactable
end
