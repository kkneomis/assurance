class AddUserIdToCourseInformations < ActiveRecord::Migration
  def change
    add_column :course_informations, :user_id, :integer
  end
end
