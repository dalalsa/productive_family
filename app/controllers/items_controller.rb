class ItemsController < ApplicationController
#   def show
# @item=Item.find_by_id(params[:id]);

#   end
  def create
    # raise "error"
  chosen_product = Product.find(params[:product_id])
  current_cart = @current_cart

  if current_cart.products.include?(chosen_product)
    @item = current_cart.items.find_by(:product_id => chosen_product)
    @item.quantity += 1
  else
    # @item = Item.new(item_params)
    # @item.cart = current_cart
    # @item.product = chosen_product
    # current_cart = 
  end

  # @item.save
  redirect_to cart_path(current_cart)


end
private
  def item_params
    params.require(:item).permit(:product_id, :quantity,:cart_id, :order_id)
  end
end
