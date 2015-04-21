class CreateQuestionsAol1s < ActiveRecord::Migration
  def change
    create_table :questions_aol_1s do |t|
      t.string :q1
      t.string :q2
      t.string :q3
      t.string :q4
      t.string :q5
      t.string :q6
      t.string :q7
      t.string :q8
      t.string :q9
      t.string :q10
      t.string :q11
      t.string :q12

      t.timestamps
    end
  end
end
