class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :booking_time, presence: true
end
