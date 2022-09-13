class ClassDetail < ApplicationRecord
  has_many :teacher_classes
  has_many :teacher_details, :through => :teacher_classes
  belongs_to :student_detail
  enum class_name: {sixth: '6th', seventh: '7th', eighth: '8th', ningth: '9th', tenth: '10th'} 

end
