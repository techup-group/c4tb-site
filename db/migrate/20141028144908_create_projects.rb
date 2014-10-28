class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :link_url
      t.string :code_url
      t.string :project_type
      t.string :categories

      t.timestamps
    end
  end
end
