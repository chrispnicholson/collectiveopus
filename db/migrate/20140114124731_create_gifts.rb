class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.integer :gift_id
      t.integer :project_id
      t.string :gift_name
      t.string :gift_url

      t.timestamps
    end
  end
end
