class ProductsController < ApplicationController
  def get_all_products
    render json: Product.all.as_json
  end

  def get_1_product
    render json: Product.first.as_json
  end

  def get_product_by_params
    #this method takes an id that is input through params and then redirects the user to render_params below
    inputs = params["input"]
    product = Product.find_by(id: inputs)

    if inputs != nil
      redirect_to "/product/#{product.name}/#{product.id}"
    else
      render json: { message: "product not found" }
    end
  end

  def render_params
    #this method and related route renders the product with the name in the url. there is a problem though that once redirected if the user changes the id it keeps the old product.name
    render json: Product.find_by(id: params[:id])
  end
end
