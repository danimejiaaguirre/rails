class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :answer
      t.references :question
      t.references :team
      t.boolean :ok

      t.timestamps
    end
    add_index :results, :answer_id
    add_index :results, :question_id
    add_index :results, :team_id
  end
end
