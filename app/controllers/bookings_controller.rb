class BookingsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @restaurant = Restaurant.find(params[:restaurant_id])
    @booking.restaurant = @restaurant
    if @booking.save
      flash[:notice] = "Booking was successfull!"
      redirect_to restaurant_path(@restaurant)
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:restaurant_id, :user_id, :booking_time)
  end
end
