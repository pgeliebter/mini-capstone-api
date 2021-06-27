Supplier.create!([
  { name: "Blizzard Entertainment", email: "games@blizzard.com", phone_number: "333-333-3333" },
  { name: "Aqualung", email: "aqua@lung.com", phone_number: "444-444-4444" },
  { name: "Microsoft", email: "micro@soft.com", phone_number: "222-222-2222" },
  { name: "GoooooSplit", email: "goo@gunk.com", phone_number: "555-555-5555" },
  { name: "Coca Cola", email: "Coke@cocacola.com", phone_number: "800-GOT-COKE" },
])
Product.create!([
  { name: "not Goo", price: "10.0", image_url: nil, description: "not Slimy stuff", inventory: 22, supplier_id: 4 },
  { name: "Goo", price: "40.0", image_url: nil, description: "Slimy stuff", inventory: 2, supplier_id: 4 },
  { name: "Golden Doubloon", price: "12.0", image_url: nil, description: "123", inventory: 0, supplier_id: 4 },
  { name: "Doubloon Cookie", price: "2.0", image_url: "https://rlv.zcache.com/svc/view?realview=113289991737303735&design=8d047ef7-1b45-4dfe-80f7-1b68aea8457f&rlvnet=1&style=setoffour&shape=round&max_dim=1024", description: "A gold doubloon on a cookie!", inventory: 3, supplier_id: 4 },
  { name: "Side Ferrule", price: "6004.0", image_url: "https://dummyimage.com/300x300/4a0216/75ba3e.png?text=", description: "Windows", inventory: 1, supplier_id: 4 },
  { name: "Golden Cookie", price: "1000.0", image_url: "https://rlv.zcache.com/svc/view?realview=113289991737303735&design=8d047ef7-1b45-4dfe-80f7-1b68aea8457f&rlvnet=1&style=setoffour&shape=round&max_dim=1024", description: "A gold doubloon on a cookie!", inventory: 1, supplier_id: 4 },
  { name: "Diablo 2", price: "100.0", image_url: "https://upload.wikimedia.org/wikipedia/en/d/d5/Diablo_II_Coverart.png", description: "A timeless classic!", inventory: 45, supplier_id: 3 },
  { name: "Aqua Lung Calypso Regulator", price: "250.0", image_url: "https://us.aqualung.com/dw/image/v2/BDTB_PRD/on/demandware.static/-/Sites-aqualung-m-catalog/default/dwe5dd1c64/images/products/rg126111_1.jpg?sw=765&sh=765", description: "Something to keep you alive underwater. Buy it or else the consenquences will be dire.", inventory: 2, supplier_id: 2 },
  { name: "Cherry Coke Zero", price: "1.0", image_url: "https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/products/coca-cola-flavors/cherry/zero-sugar/cherry-zero-sugar_12oz_desktop.jpg", description: "The most awesomest soda of all time, every time.", inventory: 1, supplier_id: 1 },
])
