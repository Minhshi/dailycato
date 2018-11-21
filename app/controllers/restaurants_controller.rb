class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.where.not(latitude: nil, longitude: nil)

    @markers = @restaurants.map do |restaurant|
      {
        lng: restaurant.longitude,
        lat: restaurant.latitude
      }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
