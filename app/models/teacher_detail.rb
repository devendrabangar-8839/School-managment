class TeacherDetail < ApplicationRecord
  belongs_to :user
  belongs_to :subject

  has_many :teacher_classes
  has_many :class_details, :through => :teacher_classes

  has_many :teacher_students
  has_many :student_details, :through => :teacher_students
  
  has_many :addresses, as: :addressable
  has_many :contacts, as: :contactable
end
