class CreateCollectives < ActiveRecord::Migration
  def change
    create_table :collectives do |t|
      t.integer :collective_id
      t.integer :user_id
      t.string :collective_name

      t.timestamps
    end
  end
end
