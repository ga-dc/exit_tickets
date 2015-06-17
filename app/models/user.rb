class User < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :taught_courses, class_name: "Course", join_table: "courses_instructors"

  def name
    "#{first_name} #{last_name}"
  end
end
