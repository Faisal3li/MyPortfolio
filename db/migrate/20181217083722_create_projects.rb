class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :image
      t.string :description
      t.string :technologies

      t.timestamps
    end
  end
end
