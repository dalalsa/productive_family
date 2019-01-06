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
  # raise
# getData = params[:data_value]
    # if request.location.ip == "127.0.0.1"
    # @location = Geocoder.search(request.ip)[0]
    # @location = Geocoder.search("24.6655998, 46.676702899999995")[0]
    # # console
    # current_user.latitude = @location.latitude
    #   current_user.longitude = @location.longitude
    #   current_user.address = @location.address
    #   current_user.save
    # else
    #   # if !current_user.address.include?("riyadh")
    #     #  @location = Geocoder.search(request.ip)[0]
    #   @location = request.location
    #   current_user.latitude = @location.latitude
    #   current_user.longitude = @location.longitude
    #   current_user.address = @location.address
    #   #  console
    #    current_user.save
      # end
    # end
    # raise
    
  end

  def approve
    #raise "text"
    order = Order.find_by(id: params[:id])
    order.status = "Approved"
    order.save
     redirect_to request.referrer

  end

  def reject
    order = Order.find_by(id: params[:id])
    order.status = "Rejected"
    order.save
     redirect_to request.referrer

  end
#This action Run when buy the products
  def create
    # Rails.logger.info(request.env)
    # logger.info("***#{session[:data_value]}")
    # session[:data_value] = params[:data_value]
    getDataLat = params[:data_lat]
    getDataLong = params[:data_long]
    @location = Geocoder.search("#{getDataLat},#{getDataLong}")[0]
    if @location.present?
    current_user.latitude = @location.latitude
    current_user.longitude = @location.longitude
    current_user.address = @location.address
    # current_user.address = getDataLat
    current_user.save  
    end 
    # raise '¯\_(ツ)_/¯'

    order = current_user.orders.new(status: "pending")
    order.item_ids = @current_cart.item_ids
    order.save

   @current_cart.destroy
  

    # raise "text"

    redirect_to root_path
  end


end
