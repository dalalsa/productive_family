class ItemsController < ApplicationController
  def create
  # Find associated product and current cart
  chosen_product = Product.find(params[:product_id])
  current_cart = @current_cart

  # If cart already has this product then find the relevant item and iterate quantity otherwise create a new item for this product
  if current_cart.products.include?(chosen_product)
    # Find the item with the chosen_product
    @item = current_cart.items.find_by(:product_id => chosen_product)
    # Iterate the item's quantity by one
    @item.quantity += 1
  else
    @item = LineItem.new
    @item.cart = current_cart
    @item.product = chosen_product
  end

  # Save and redirect to cart show path
  @item.save
  redirect_to cart_path(current_cart)
end

private
  def item_params
    params.require(:item).permit(:quantity,:product_id, :cart_id)
  end
end
