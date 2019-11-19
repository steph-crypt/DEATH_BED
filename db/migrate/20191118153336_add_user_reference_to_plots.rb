class AddUserReferenceToPlots < ActiveRecord::Migration[5.2]
  def change
    add_reference :plots, :user, index: true
  end
end
