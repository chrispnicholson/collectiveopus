class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :project_id
      t.integer :collective_id
      t.string :project_name

      t.timestamps
    end
  end
end
