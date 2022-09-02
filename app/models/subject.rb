class Subject < ApplicationRecord
  has_many :teacher_classes
  has_many :teacher_details, :through => :teacher_classes

  has_many :student_subjects
  has_many :student_details, :through => :student_subjects
end
