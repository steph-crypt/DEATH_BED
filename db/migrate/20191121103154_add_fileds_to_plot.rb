class AddFiledsToPlot < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :price, :integer
    add_column :plots, :cementary_name, :string
    add_column :plots, :address, :string
  end
end
