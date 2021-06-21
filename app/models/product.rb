class Product < ApplicationRecord
  def is_discounted?
    price <= 10
  end

  def tax
    tax_rate = 0.09
    tax = price * tax_rate
  end

  def total
    price * (1 + tax)
  end
end
