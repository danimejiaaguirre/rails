class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :rol
      t.string :name
      t.string :email
      t.string :pasword

      t.timestamps
    end
    add_index :users, :rol_id
  end
end
