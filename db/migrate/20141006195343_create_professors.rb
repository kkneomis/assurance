class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :First_Name
      t.string :Last_Name
      t.string :Department
      t.string :Address
      t.string :City
      t.string :State
      t.string :Zip_Code
      t.string :Cell_Phone
      t.string :Home_Phone
      t.string :Office_Phone
      t.string :Office_Fax
      t.string :Primary_Email
      t.string :Secondary_Email

      t.timestamps
    end
  end
end
