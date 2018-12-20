class AddJobTitleToTraining < ActiveRecord::Migration[5.2]
  def change
    add_column :trainings, :jobTitle, :string
  end
end
