class Admin::RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Resstaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render new_restaurant_path
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :cuisine)
  end
end
