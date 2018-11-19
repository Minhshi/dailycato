class Deal < ApplicationRecord
  belongs_to :restaurants

  validates :name, presence: true
  validates :description
  validates :price, presence: true

  validates :type_of_food, unclusion: ["bio", "curry", "falafel", "fingerfood", "fisch", "fleisch", "früchte", "getränke", "glutenfrei", "low carb", "meeresfrüchte", "organisch", "pasta", "pommes frites", "reis", "scharf", "suppe", "taco", "vegan"]

  validates_presence_of :start_date, :end_date
  validate :end_date_is_after_start_date
end
