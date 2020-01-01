class RemovePlotIdFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :plot_id, :integer
  end
end
