class Seller < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :username, uniqueness: true

  has_many :products
  ratyrate_rateable "quality", "delviry_cost", "price_for_quality"
  has_many :orders
  mount_uploader :img, ImageUploader
end
