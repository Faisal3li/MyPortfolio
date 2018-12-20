class ProjectsTechnologies < ActiveRecord::Migration[5.2]
  def change
    create_join_table :projects, :technologies, id: false do |t|
      t.index [:project_id, :technology_id]
      t.index [:technology_id, :project_id]
    end
  end
end
