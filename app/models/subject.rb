class Subject < ApplicationRecord
  belongs_to :teacher_detail

  has_many :student_subjects
  has_many :student_details, :through => :student_subjects
  enum subject: {hindi: 'hindi', english: 'english', mathes: 'mathes', science: 'science', evm: 'evm' }
end
