class OrdersController < ApplicationController 
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
   
    # @order = Order.find_by(id: 1)

  end

  def show
    @order = Order.find_by(id: params[:id])
  end

  def new
     
    @order = Order.new
    @cart = @current_cart

    if request.location.ip == "127.0.0.1"
      @location = Geocoder.search(request.ip)[0]
    current_user.address = @location.address
   
   
      current_user.latitude = @location.latitude
      current_user.longitude = @location.longitude
       current_user.save
    else
      if !current_user.address.include?("riyadh")
        @location = request.location
        current_user.address = @location.address
      end
     
    end
    # raise
    
  end

  def approve
    #raise "text"
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
    # raise "a"
   @current_cart.destroy
  

    # raise "text"

    redirect_to root_path
  end


end
