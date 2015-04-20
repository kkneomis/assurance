class CreatePInformations < ActiveRecord::Migration
  def change
    create_table :p_informations do |t|
      t.string :First_Name
      t.string :Last_Name
      t.integer :Rank
      t.string :Department
      t.string :Room
      t.string :Email
      t.string :Ext
      t.string :OfficeHours

      t.timestamps
    end
  end
end
