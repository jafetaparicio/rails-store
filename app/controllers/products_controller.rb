class ProductsController < ApplicationController
  def index #show all products from the database
    @products = Product.all
  end
  
  def new
  end
  
  def create #doesnt need view
    @product = Product.new
    @product.name = params[:names]
    @product.description = params[:description]
    @product.picture_url = params[:picture_url]
    @product.price = params [:price]
    @product.save
    
    redirect_to '/products'
  end
  
  def edit
    @product = Product.find params[:id]
  end
  
  def update #doesnt need view
    @product = Product.find params[:id]
    @product.name = params[:names]
    @product.description = params[:description]
    @product.picture_url = params[:picture_url]
    @product.price = params [:price]
    @product.save
    
    redirect_to '/products'
  end
  
  def show #have not seen before
    @product = Product.find params[:id]
  end
end
