class CreatePossibleResponses < ActiveRecord::Migration
  def change
    create_table :possible_responses do |t|
      t.references :question, index: true, foreign_key: true
      t.string :vale

      t.timestamps null: false
    end
  end
end
