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
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    if product.save
      render json: product
    else
      render json: { error: product.errors.full_messages }, status: 422
    end
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    if product.save
      render json: product
    else
      render json: { error: product.errors.full_messages },
             status: 422
    end
  end

  def destroy
    product_id = params[:id]
    product = Product.find(product_id)
    product.destroy
    render json: { message: "#{product_id} has been deleted",
                   product: product }
  end
end
