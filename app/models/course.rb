class Course < ActiveRecord::Base
  has_and_belongs_to_many :instructors, class_name: "User", join_table: "courses_instructors"
  has_many :surveys

  def dates
    "#{start_date} - #{end_date}"
  end
  
  def instructor_names
    instructors.map(&:name).to_sentence
  end
end
