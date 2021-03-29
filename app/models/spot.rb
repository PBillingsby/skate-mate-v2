class Spot < ApplicationRecord
  belongs_to :user
  has_many :ratings, :dependent => :destroy
  has_many :image_links, :dependent => :destroy
  accepts_nested_attributes_for :ratings

  attr_accessor :street_address, :city, :state, :country

  before_save :set_spot_coordinates

  def set_spot_coordinates
    Mapbox.access_token = ENV["MAPBOX_TOKEN"]
    spot_coordinates = Mapbox::Geocoder.geocode_forward("#{self.street_address}, #{self.city}, #{self.state}, #{self.country}")
    self.longitude = spot_coordinates[0]["features"][0]["center"][0]
    self.latitude = spot_coordinates[0]["features"][0]["center"][1]
  end
end