class ProductsController < ApplicationController
  def get_all_products
    render json: Product.all.as_json
  end

  def get_1_product
    render json: Product.first.as_json
  end

  def get_product_by_params
    render json: { "message": "yooooo" }
  end
end
