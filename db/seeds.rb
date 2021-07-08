Category.create!([
  {name: "Games"},
  {name: "Chocolate"}
])
Supplier.create!([
  {name: "Blizzard Entertainment", email: "games@blizzard.com", phone_number: "333-333-3333"},
  {name: "Aqualung", email: "aqua@lung.com", phone_number: "444-444-4444"},
  {name: "Microsoft", email: "micro@soft.com", phone_number: "222-222-2222"},
  {name: "GoooooSplit", email: "goo@gunk.com", phone_number: "555-555-5555"},
  {name: "Coca Cola", email: "Coke@cocacola.com", phone_number: "800-GOT-COKE"}
])
CartedProduct.create!([
  {user_id: 1, quantity: 4, status: "carted", order_id: nil, product_id: 2},
  {user_id: 1, quantity: 4, status: "carted", order_id: nil, product_id: 3},
  {user_id: 1, quantity: 4, status: "carted", order_id: nil, product_id: 1},
  {user_id: 1, quantity: 4, status: "canceled", order_id: nil, product_id: 1}
])
Product.create!([
  {name: "not Goo", price: "10.0", description: "not Slimy stuff", inventory: 22, supplier_id: 4},
  {name: "Goo", price: "40.0", description: "Slimy stuff", inventory: 2, supplier_id: 4},
  {name: "Golden Doubloon", price: "12.0", description: "123", inventory: 0, supplier_id: 4},
  {name: "Doubloon Cookie", price: "2.0", description: "A gold doubloon on a cookie!", inventory: 3, supplier_id: 4},
  {name: "Side Ferrule", price: "6004.0", description: "Windows", inventory: 1, supplier_id: 4},
  {name: "Golden Cookie", price: "1000.0", description: "A gold doubloon on a cookie!", inventory: 1, supplier_id: 4},
  {name: "Diablo 2", price: "100.0", description: "A timeless classic!", inventory: 45, supplier_id: 3},
  {name: "Aqua Lung Calypso Regulator", price: "250.0", description: "Something to keep you alive underwater. Buy it or else the consenquences will be dire.", inventory: 2, supplier_id: 2},
  {name: "Cherry Coke Zero", price: "1.0", description: "The most awesomest soda of all time, every time.", inventory: 1, supplier_id: 1}
])
Order.create!([
  {user_id: 1, subtotal: "108.0", tax: "9.72", total: "117.72"},
  {user_id: 1, subtotal: "90.0", tax: "8.1", total: "98.1"},
  {user_id: 1, subtotal: "90.0", tax: "8.1", total: "98.1"},
  {user_id: 1, subtotal: "90.0", tax: "8.1", total: "98.1"},
  {user_id: 1, subtotal: "110.0", tax: "9.9", total: "119.9"},
  {user_id: 2, subtotal: "24.0", tax: "2.16", total: "26.16"}
])
ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 2},
  {product_id: 4, category_id: 1}
])
User.create!([
  {name: "Pinny", email: "pinny@example.com", password_digest: "$2a$12$L6GGELXnzC8HB6DxIEbkRuKGGEks5wTL.ZjsnYiugz.FTgtVlvrnC", role: "admin", admin: true}
])
