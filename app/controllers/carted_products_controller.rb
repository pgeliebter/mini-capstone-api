class CartedProductsController < ApplicationController
  def index
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
    )
    if carted_product.save
      render json: carted_product
    else
      render json: { errors: carted_product.errors.full_messages }, status: 422
    end
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: { message: "Carted product successfully removed!" }
  end

  # old junk
  # before_action :authenticate_user

  # def create
  #   product = Product.find(params[:product_id])
  #   quant = params[:quantity]
  #   carted_product = CartedProduct.new(
  #     product_id: product.id,
  #     quantity: quant,
  #     user_id: current_user.id,
  #     status: "carted",
  #   )
  #   carted_product.save ? (render json: carted_product) : (render json: carted_product.errors)
  # end

  # def index
  #   cart = current_user.carted_products

  #   render json: cart
  # end
end
