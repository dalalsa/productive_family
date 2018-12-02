class Order < ApplicationRecord
  belongs_to :user
  has_many :items
  belongs_to :seller
end
