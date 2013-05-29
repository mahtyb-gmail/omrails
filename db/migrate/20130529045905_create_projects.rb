class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :project_length
      t.string :project_type
      t.string :project_hometown
      t.text :project_info
      t.date :project_start
      t.text :project_schedinfo

      t.timestamps
    end
  end
end
