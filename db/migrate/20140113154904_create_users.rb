class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :username
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
