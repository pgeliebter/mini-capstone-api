class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    product = Product.find(params[:product_id])
    quant = params[:quantity]
    carted_product = CartedProduct.new(
      product_id: product.id,
      quantity: quant,
      user_id: current_user.id,
      status: "carted",
    )
    carted_product.save ? (render json: carted_product) : (render json: carted_product.errors)
  end

  def index
    cart = current_user.carted_products

    render json: cart
  end
end
