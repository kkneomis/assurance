class CreateProfessorSchedules < ActiveRecord::Migration
  def change
    create_table :professor_schedules do |t|
      t.string :name
      t.integer :rank
      t.string :department
      t.integer :room
      t.string :email
      t.integer :ext
      t.string :Course_Title
      t.integer :CRN
      t.string :meeting_days
      t.integer :time
      t.integer :room_num
      t.integer :enrollment

      t.timestamps
    end
  end
end
