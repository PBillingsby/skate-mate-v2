class Spot < ApplicationRecord
  belongs_to :user
  has_many :ratings, :dependent => :destroy
  has_many :image_links, :dependent => :destroy
  accepts_nested_attributes_for :ratings

  attr_accessor :street_address, :city, :state, :country

  before_save :set_spot_coordinates

  def set_spot_coordinates
    binding.pry
    response = HTTParty.get("http://geocoding/v5/mapbox.places/#{self.street_address.gsub(" ", "%")}%20#{self.city}%20#{self.state}%20#{self.country}.json?access_token=#{ENV["MAPBOX_TOKEN"]}")
    binding.pry
  end
end