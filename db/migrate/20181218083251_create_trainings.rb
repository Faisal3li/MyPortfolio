class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.string :name
      t.string :image
      t.string :description
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
