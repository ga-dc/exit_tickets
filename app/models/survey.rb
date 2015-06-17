class Survey < ActiveRecord::Base
  belongs_to :course
  has_many :responses
  has_many :survey_questions
  has_many :questions, through: :survey_questions

  accepts_nested_attributes_for :survey_questions
end
