class CreateAolFours < ActiveRecord::Migration
  def change
    create_table :aol_fours do |t|
      t.string :q_nineteen
      t.string :q_twenty
      t.string :q_twentyone
      t.string :q_twentytwo

      t.timestamps
    end
  end
end
