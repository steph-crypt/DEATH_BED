class AddNameandPictureToPlot < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :description, :string
    add_column :plots, :photo, :string
  end
end
