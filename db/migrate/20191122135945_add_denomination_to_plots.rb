class AddDenominationToPlots < ActiveRecord::Migration[5.2]
  def change
    add_column :plots, :denomination, :string
  end
end
