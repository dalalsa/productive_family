class ItemsController < ApplicationController
  def show
    @item = Item.find_by(id: params[:id])
  end
  
  def create
  chosen_product = Product.find(params[:product_id])
  current_cart = @current_cart

  if current_cart.products.include?(chosen_product)
    @item = current_cart.items.find_by(:product_id => chosen_product.id)
    @item.quantity += 1
  else
    @item = Item.new(item_params)
    @item.cart = current_cart
    @item.product = chosen_product
  end
  @item.save
      # item = current_cart.items.create(item_params)

  redirect_to cart_path(current_cart)

end

private
  def item_params
    params.permit(:product_id, :quantity).merge(cart_id: @current_cart.id)
    # params.require(:item).permit(:product_id, :quantity,:cart_id, :order_id)
  end
end
