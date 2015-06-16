class CreateSurveyQuestions < ActiveRecord::Migration
  def change
    create_table :survey_questions do |t|
      t.references :survey, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true
      t.integer :position

      t.timestamps null: false
    end
  end
end
