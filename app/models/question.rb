class Question < ActiveRecord::Base
  has_many :survey_questions
  has_many :surveys, through: :survey_questions
  has_many :responses
  has_many :possible_responses
end
