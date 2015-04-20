class CreatePInfos < ActiveRecord::Migration
  def change
    create_table :p_infos do |t|
      t.string :Name
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
