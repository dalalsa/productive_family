class Item < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :cart

 
  # LOGIC
  def total_price
    self.quantity * self.product.price
  end
end
