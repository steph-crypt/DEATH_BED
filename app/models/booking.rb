class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :plot
  has_one :review, dependent: :destroy
end
