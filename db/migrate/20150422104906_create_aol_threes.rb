class CreateAolThrees < ActiveRecord::Migration
  def change
    create_table :aol_threes do |t|
      t.string :q_thirthteen
      t.string :q_fourthteen
      t.string :q_fithteen
      t.string :q_sixthteen
      t.string :q_seventeen
      t.string :q_eightteen

      t.timestamps
    end
  end
end
