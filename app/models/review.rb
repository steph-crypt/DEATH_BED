class Review < ActiveRecord
  belongs_to :user
  belongs_to :booking
end

