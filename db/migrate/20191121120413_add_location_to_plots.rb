class AddLocationToPlots < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :location, :text
  end
end
