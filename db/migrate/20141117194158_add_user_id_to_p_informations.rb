class AddUserIdToPInformations < ActiveRecord::Migration
  def change
    add_column :p_informations, :user_id, :integer
  end
end
