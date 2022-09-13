class StudentDetail < ApplicationRecord
  belongs_to :user 
  has_many :student_subjects
  has_many :subjects, :through => :student_subjects

  has_many :teacher_students
  has_many :teacher_details, :through => :teacher_students

  has_one :address, as: :addressable
  has_one :contact, as: :contactable
  has_one :class_detail
  #enum class: {class_6th: '6th', class_7th: '7th', class_8th: '8th', class_9th: '9th', class_10th: '10th'} 
end
