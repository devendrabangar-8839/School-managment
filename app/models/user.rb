class User < ApplicationRecord
  has_many :student_details
  has_many :teacher_details
  # enum gender: {male: 'male', female: 'female'}
  # enum role: {admin: 'admin', student: 'student', teacher: 'teacher'} 
end
