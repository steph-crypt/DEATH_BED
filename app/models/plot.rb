class Plot < ApplicationRecord
  # belongs_to :user, through: :bookings
  has_many :bookings
  belongs_to :user
  mount_uploader :photo, PhotoUploader

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end

 include PgSearch::Model
  pg_search_scope :search_by_name_and_location_and_description_and_price_and_denomination_and_cementary_name,
    against: [ :name, :location, :price, :denomination, :cementary_name ],
    using: {
      tsearch: { prefix: true }
    }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
