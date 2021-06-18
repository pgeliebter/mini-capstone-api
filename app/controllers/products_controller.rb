class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products
  end

  def show
    product = Product.find(params[:id])
    render json: product
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params[:price].to_i,
      image_url: params[:image_url],
      description: params[:description],
    )
    product.save
    render json: product
  end
end
