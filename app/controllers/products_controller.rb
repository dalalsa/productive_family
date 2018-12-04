class ProductsController < ApplicationController
  
  
  
  
  def index
@products=Product.where(seller_id: current_seller)
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
    @product = Product.new
  end

  def create 
    product = current_seller.products.create(product_params)
   redirect_to seller_path(current_seller)

  end

  def edit
    @product = Product.find(params[:id])
  end

   def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to products_path
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

   private

  def product_params
    params.require(:product).permit(:name, :description, :image, :category, :price ,:seller_id)
  end

end
