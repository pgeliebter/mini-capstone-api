class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    #  the below code is supposed to allow a user to use params to filter products based off a category. Not fully working yet.
    # if params[:category]
    #   products = Category.find_by(name: params[:category])
    # else
    #   products = Product.all
    # end
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
    product.description = params[:description] || product.description
    product.supplier_id = params[:supplier_id] || product.supplier_id
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
