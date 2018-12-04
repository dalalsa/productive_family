class ItemsController < ApplicationController
  def show
    @item = Item.find_by(id: params[:id])
  end
  
  def create
  chosen_product = Product.find(params[:product_id])
  # seller = chosen_product.seller_id
  current_cart = @current_cart
  if current_cart.products.include?(chosen_product)
  @item = current_cart.items.find_by(:product_id => chosen_product.id)
    @item.quantity += 1
    
  else
    if current_cart.seller_id == chosen_product.seller.id || current_cart.seller_id.nil?
      # If the item that you are about to add is associated with a different seller than the first item in the cart
      @item = Item.new(item_params)
      @item.cart = current_cart
      @item.product = chosen_product
    else
      # raise "a"
    end
  end
  @item.save
      # item = current_cart.items.create(item_params)
  # redirect_to cart_path(current_cart)
 redirect_to request.referrer
end
def add_quantity
  @item = Item.find(params[:id])
  @item.quantity += 1
  @item.save
  redirect_to cart_path(@current_cart)
end
def reduce_quantity
  @item = Item.find(params[:id])
  if @item.quantity > 1
    @item.quantity -= 1
  end
  @item.save
  redirect_to cart_path(@current_cart)
end

def destroy
  @item = Item.find(params[:id])
  @item.destroy
  redirect_to cart_path(@current_cart)
end  

  private

  def item_params
    params.permit(:product_id, :quantity).merge(cart_id: @current_cart.id)
    # params.require(:item).permit(:product_id, :quantity,:cart_id, :order_id)
  end
end
