class CreateJoinForCoursesInstuctors < ActiveRecord::Migration
  def change
    create_join_table :courses, :users, table_name: :courses_instructors do |t|
      t.index :course_id
      t.index :user_id
    end
  end
end
