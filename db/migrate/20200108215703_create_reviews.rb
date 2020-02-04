class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :booking_id
      t.integer :satisfaction
      t.text :comments
      t.references :booking, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
