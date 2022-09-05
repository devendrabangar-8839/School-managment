class TeacherClass < ApplicationRecord
 
  belongs_to :teacher_detail
  belongs_to :class_detail
end
