class User < ApplicationRecord
  validates :name, presence: true
  validates :father_name, presence: { message: 'must be abided' }
  validates :role, presence: true
  validates :gender, presence: true
  has_one :student_detail
  has_one :teacher_detail
  enum gender: {male: 'male', female: 'female'}
  enum role: {admin: 'admin', student: 'student', teacher: 'teacher'} 
end
