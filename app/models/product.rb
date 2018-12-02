class Product < ApplicationRecord
  belongs_to :seller
  has_many :items
  mount_uploader :image, ImageUploader
end
