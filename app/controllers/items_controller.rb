class ItemsController < ApplicationController
  def create
    # raise "error"
    chosen_product = Product.find(params[:product_id])
    current_cart = @current_cart

    if current_cart.products.include?(chosen_product)
      @item = current_cart.items.find_by(:product_id => chosen_product)
      @item.quantity += 1
    else
      @item = Item.new()
      @item.cart = current_cart
      @item.product = chosen_product
      @item.quantity = 1
      @item.order= Order.last
    end
    @item.save
    redirect_to cart_path(current_cart)
  end

  private

  def item_params
    params.require(:item).permit(:product_id, :quantity, :cart_id)
  end
end
