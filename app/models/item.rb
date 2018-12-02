class Item < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product
  belongs_to :cart, optional: true

 
  # LOGIC
  def total_price
    self.quantity * self.product.price
  end
end
