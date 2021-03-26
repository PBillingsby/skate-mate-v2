class SpotsController < ApplicationController
  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.create(spot_params)
    redirect_to spot_path(@spot)
  end

  def spot_params
    params.require(:spot).permit(:name, :street_address, :city, :state, :country, :user_id)
  end
end