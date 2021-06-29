class OrdersController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
    if order.save
      render json: order
    else
      render json: order.errors
    end
  end

  def show
    order = Order.find(params[:id])

    if current_user
      if order
        render json: order
      else
        render json: { error: "that order can't be found" }
      end
    else
      render status: 401
    end
  end

  def index
    orders = Order.all
    if current_user
      render json: orders
    else
      render status: 401
    end
  end
end
