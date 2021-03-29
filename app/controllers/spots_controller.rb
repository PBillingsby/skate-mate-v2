class SpotsController < ApplicationController
  def new
    @spot = Spot.new
    @spot.ratings.build
  end

  def create
    spot = Spot.create(spot_params)
    if params[:spot][:image]
      image = Cloudinary::Uploader.upload(params[:spot][:image], options = {CLOUDINARY_URL: ENV["CLOUDINARY_NAME"]})
      spot.image_links.create(image_link: image["url"], user_id: current_user.id)
    end
    redirect_to spot_path(spot)
  end

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def destroy
    spot = Spot.find(params[:id])
    spot.delete
    flash[:notice] = "#{spot.name} deleted"
    redirect_to spots_path
  end

  def spot_params
    params.require(:spot).permit(:name, :street_address, :city, :state, :country, :longitude, :latitude, :user_id, { ratings_attributes: [:user_id, :rating, :description] })
  end
end