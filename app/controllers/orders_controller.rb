class OrdersController < ApplicationController
  def create
    order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
    )
    if order.save
      render json: order
    else
      render json: order.errors
    end
  end
end
