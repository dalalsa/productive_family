class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  ratyrate_rater
  validates_presence_of     :username, :full_name, :address, :phone
   
  geocoded_by :address       # can also be an IP address
  after_validation :geocode  # auto-fetch coordinates
end
