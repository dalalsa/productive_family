class Cart < ApplicationRecord
    has_many :items, dependent: :destroy
    has_many :products, through: :items
    
  # # LOGIC
  # def sub_total
  #   sum = 0
  #   self.items.each do |line_item|
  #     sum+= item.total_price
  #   end
  #   return sum
  # end
  
end
