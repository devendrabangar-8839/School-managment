class ClassDetail < ApplicationRecord
  has_many :teacher_classes
  has_many :teacher_details, :through => :teacher_classes
  belongs_to :student_detail
end
