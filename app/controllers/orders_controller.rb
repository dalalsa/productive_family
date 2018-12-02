class OrdersController < ApplicationController #   def index
  #     @orders=Order.all
  #   end
  def index
    # @orders = Order.where(user_id: current_user || seller_id: current_seller)
    @orders = Order.where("user_id = ? OR seller_id = ?", current_user, current_seller)

    # @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @cart = @current_cart

    raise
  end

  def approve
    raise "text"
    order = Order.find_by(id: params[:id])
    order.status = "Approved"
    order.save
  end

  def reject
    order = Order.find_by(id: params[:id])
    order.status = "Rejected"
    order.save
  end

  def create
    # raise "text"
    order = current_user.orders.create(status: "pending")

    # @current_cart.items.each do |item|
    #   @order.items << item
    #   item.cart_id = nil
    # end

    # Cart.destroy(session[:cart_id])
    # session[:cart_id] = nil
    # redirect_to root_path
  end

  # private

  # def order_params
  #   params.require(:order).permit(:user_id, :status => "p")
  # end
end
