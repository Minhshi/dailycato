class Restaurant < ApplicationRecord
  has_many :deals
  has_many :reviews
  has_one :owner

  validates :cuisine, inclusion: ["amerikanisch", "französisch", "asiatisch", "burger", "dessert", "deutsche küche", "fisch", "gesund", "exklusive deals", "indisch", "italienisch", "japanisch", "koreanisch", "mediterranean", "mexikanisch", "pizza", "sandwiches", "sushi", "syrisch", "thailändisch", "türkisch", "vegetarisch", "vietnamesisch"]

  validates :name, presence: true
  validates :address, presence: true
  validates :owner, presence: true
end
