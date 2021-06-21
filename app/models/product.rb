class Product < ApplicationRecord
  def is_discounted?
    price <= 10
  end

  def tax
    @tax_rate = 0.09
    return tax = price * @tax_rate
  end

  def total
    return price * (1 + @tax_rate)
  end
end
