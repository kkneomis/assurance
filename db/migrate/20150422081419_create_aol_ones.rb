class CreateAolOnes < ActiveRecord::Migration
  def change
    create_table :aol_ones do |t|
      t.string :q_one
      t.string :q_two
      t.string :q_three
      t.string :q_four
      t.string :q_five
      t.string :q_six

      t.timestamps
    end
  end
end
