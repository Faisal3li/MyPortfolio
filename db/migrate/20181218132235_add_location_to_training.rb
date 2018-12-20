class AddLocationToTraining < ActiveRecord::Migration[5.2]
  def change
    add_column :trainings, :place, :string
  end
end
