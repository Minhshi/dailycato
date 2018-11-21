class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.all
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
