class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.date :date
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
