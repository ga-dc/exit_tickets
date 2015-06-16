class Course < ActiveRecord::Base
  has_and_belongs_to_many :instructors, class_name: "User", join_table: "courses_instructors"
  has_many :surveys
end
