class Spot < ApplicationRecord
  belongs_to :user
  has_many :ratings
  has_many :image_links
  
end