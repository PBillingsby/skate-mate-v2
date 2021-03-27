class Spot < ApplicationRecord
  belongs_to :user
  has_many :ratings, :dependent => :destroy
  has_many :image_links, :dependent => :destroy
  
  accepts_nested_attributes_for :ratings
end