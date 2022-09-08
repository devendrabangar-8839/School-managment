class TeacherDetail < ApplicationRecord
  belongs_to :user
  has_one :subject

  has_many :teacher_classes
  has_many :class_details, :through => :teacher_classes

  has_many :teacher_students
  has_many :student_details, :through => :teacher_students
  
  has_one :address, as: :addressable
  has_one :contact, as: :contactable

  # validates :subject_id, inclusion: { in: %w(hindi english mathes science evm)}

  # enum subject: {hindi: 'hindi', english: 'english', mathes: 'mathes', science: 'science', evm: 'evm' } 
end
