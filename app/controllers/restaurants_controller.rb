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
    raise
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    authorize @restaurant
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end

  def update
    authorize @restaurant
  end

end
