class RemoveEventFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, :event, foreign_key: true
  end
end
