class CreateCourseInformations < ActiveRecord::Migration
  def change
    create_table :course_informations do |t|
      t.string :Course_Title
      t.integer :CRN
      t.string :Days
      t.string :Time
      t.string :Roomstring
      t.string :Enrollment

      t.timestamps
    end
  end
end
