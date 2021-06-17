Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/products", controller: "products", action: "get_all_products"
  get "/1_product", controller: "products", action: "get_1_product"
  get "/product/:input" => "products#get_product_by_params"
  get "/product" => "products#get_product_by_params"
end
