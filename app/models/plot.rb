class Plot < ApplicationRecord
  # belongs_to :user, through: :bookings
  has_many :bookings
  belongs_to :user
end
