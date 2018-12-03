class OrdersController < ApplicationController #   def index
  #     @orders=Order.all
  #   end
  def index
    # @orders = Order.where(user_id: current_user || seller_id: current_seller)
    # @orders = Order.where("user_id = ? OR seller_id = ?", current_user, current_seller)
    @order = Order.find_by(id: 1)

    # @orders = Order.all
  end

  def show
    @order = Order.find_by(id: params[:id])
  end

  def new
    @order = Order.new
    @cart = @current_cart

    
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
   
    order = current_user.orders.new(status: "pending")
    order.item_ids = @current_cart.item_ids
    order.save

    # raise "text"

    redirect_to root_path
  end

  # private

  # def order_params
  #   params.require(:order).permit(:user_id, :status => "p")
  # end
end
