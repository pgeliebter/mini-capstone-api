require "HTTP"
# i = 0
# while
# product = Product.find(i)
# product.destroy
i = 0
while i < 90001
  HTTP.delete("http://localhost:3000/products/#{i}")
  p i
  i += 1
end
