class Spot < ApplicationRecord
  has_many :ratings
  belongs_to :user
end