class Cart < ApplicationRecord
    has_many :items, dependent: :destroy
    has_many :products, through: :items
    
  def sub_total
    sum = 0
    self.items.each do |line_item|
      sum += line_item.total_price
    end
    return sum
  end
 
end
