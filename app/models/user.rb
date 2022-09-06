class User < ApplicationRecord
  validates :name, presence: true
  validates :father_name, presence: { message: 'must be abided' }
  validates :role, presence: true
  validates :gender, presence: true
  has_many :student_details
  has_many :teacher_details
  enum gender: {male: 'male', female: 'female'}
  enum role: {admin: 'admin', student: 'student', teacher: 'teacher'} 
end
