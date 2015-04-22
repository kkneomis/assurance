class CreateAolTwos < ActiveRecord::Migration
  def change
    create_table :aol_twos do |t|
      t.string :q_seven
      t.string :q_eight
      t.string :q_nine
      t.string :q_ten
      t.string :q_eleven
      t.string :q_twelve

      t.timestamps
    end
  end
end
