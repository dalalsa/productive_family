# README

class Item < ApplicationRecord
    belongs_to :order
    belongs_to  :product
    
end


class Order < ApplicationRecord
    has_many :items
end

class Product < ApplicationRecord
    belongs_to :seller
    has_many :items
end

class Seller < ApplicationRecord
  has_many :products
end
