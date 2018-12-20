class AddLocationToEducation < ActiveRecord::Migration[5.2]
  def change
    add_column :educations, :place, :string
  end
end
