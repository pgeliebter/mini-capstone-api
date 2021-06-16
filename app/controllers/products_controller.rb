class ProductsController < ApplicationController
  def get_all_products
    render json: Product.all.as_json
  end
end
