class ItemsController < ApplicationController
  def show
    @item = Item.find_by(id: params[:id])
  end
  
  def create
#     # raise "error"
  chosen_product = Product.find(params[:product_id])
  current_cart = @current_cart

  if current_cart.products.include?(chosen_product)
    @item = current_cart.items.find_by(:product_id => chosen_product)
    @item.quantity += 1
  else
# @item=Item.create(order_id: 6, card_id: 23, product_id: 7, quantity: 1)
    # @item = Item.new
    # @item.cart = current_cart
    # @item.product = chosen_product
          item = Item.create(item_params)

  end
  # @item.save

  redirect_to cart_path(current_cart)

end

private
  def item_params
    params.require(:item).permit(:product_id, :quantity,:cart_id)
  end
end
