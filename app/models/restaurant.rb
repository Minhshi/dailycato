class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # validates :cuisine, inclusion: ["amerikanisch", "französisch", "asiatisch", "burger", "dessert", "deutsche küche", "fisch", "gesund", "exklusive deals", "indisch", "italienisch", "japanisch", "koreanisch", "mediterranean", "mexikanisch", "pizza", "sandwiches", "sushi", "syrisch", "thailändisch", "türkisch", "vegetarisch", "vietnamesisch", "other"]
  validates :cuisine, inclusion: ["modern european", "salad", "gastropub", "asian", "japanese", "italian", "vietnamese", "eastern european", "burrito"]

  validates :name, presence: true
  validates :address, presence: true
  validates :user, presence: true
end
