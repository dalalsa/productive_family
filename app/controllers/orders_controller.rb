class OrdersController < ApplicationController#   def index

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end
  # raise "kj"
  def create
  @order = Order.new(order_params)
  @current_cart.items.each do |item|
    @order.items << item
    item.cart_id = nil
  end
  @order.save
  Cart.destroy(session[:cart_id])
  session[:cart_id] = nil
  redirect_to root_path
end

private
  def order_params
    params.require(:order).permit(:user_id, :status)
  end
end
