class OrdersController < ApplicationController
  def index
    @orders=Order.all
  end

  def new

  end

  def edit
  end

  def show
    @order=Order.find_by_id(params[:id])
  end
end
