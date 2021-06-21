Product.create(name: "Cherry Coke Zero", price: 1.75, image_url: "https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/products/coca-cola-flavors/cherry/zero-sugar/cherry-zero-sugar_12oz_desktop.jpg", description: "The most awesomest soda of all time, every time.")
Product.create(name: "Aqua Lung Calypso Regulator", price: 250, image_url: "https://us.aqualung.com/dw/image/v2/BDTB_PRD/on/demandware.static/-/Sites-aqualung-m-catalog/default/dwe5dd1c64/images/products/rg126111_1.jpg?sw=765&sh=765", description: "Something to keep you alive underwater. Buy it or else the consenquences will be dire.")

2.times do
  Product.create(name: FFaker::Product.unique.product_name, price: rand(10000), image_url: FFaker::Image.unique.url, description: FFaker::AWS.unique.product_description)
end
