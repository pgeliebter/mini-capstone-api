class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def money_math
    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    self.subtotal = calculated_subtotal,
                    self.tax = calculated_tax,
                    self.total = calculated_total,
    self.save
  end
end
