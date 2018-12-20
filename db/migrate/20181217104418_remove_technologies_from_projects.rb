class RemoveTechnologiesFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :technologies
    change_column :projects, :description, :text
  end
end
