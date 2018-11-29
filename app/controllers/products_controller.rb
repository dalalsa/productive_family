class ProductsController < ApplicationController
  def index

  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
    @product = Product.new
  end

  def create 
    product = current_seller.products.create(product_params)
   # redirect_to product_path(product)

  end

  def edit
  end

  def delete
  end

   private

  def product_params
    params.require(:product).permit(:name, :description, :image, :category, :price ,:seller_id)
  end

end
