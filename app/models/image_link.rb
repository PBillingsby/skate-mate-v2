class ImageLink < ApplicationRecord
  belong_to :user
  belongs_to :spot
end