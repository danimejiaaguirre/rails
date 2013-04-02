class CreateWinners < ActiveRecord::Migration
  def change
    create_table :winners do |t|
      t.string :nameteam
      t.string :namemember
      t.integer :score
      t.date :dategame

      t.timestamps
    end
  end
end
