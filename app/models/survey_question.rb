class SurveyQuestion < ActiveRecord::Base
  belongs_to :survey
  belongs_to :question

  accepts_nested_attributes_for :question, allow_destroy: true
end
