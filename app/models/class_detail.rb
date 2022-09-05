class ClassDetail < ApplicationRecord
  has_many :teacher_classes
  has_many :teacher_details, :through => :teacher_classes
end
