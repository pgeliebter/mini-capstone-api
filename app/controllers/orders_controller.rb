class OrdersController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    quant = params[:quantity].to_i
    calculated_subtotal = quant * product.price
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    order = Order.new(user_id: current_user.id,
                      product_id: product.id,
                      quantity: quant,
                      subtotal: calculated_subtotal,
                      tax: calculated_tax,
                      total: calculated_total)
    order.save ? (render json: order) : (render json: order.errors)
  end

  def show
    order = Order.find(params[:id])

    if order
      render json: order
    else
      render json: { error: "that order can't be found" }
    end
  end

  def index
    orders = Order.all

    render json: orders
  end
end
