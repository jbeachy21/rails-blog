class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :site_URL
      t.string :github_URL
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
