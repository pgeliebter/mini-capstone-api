class Product < ApplicationRecord
  validates :name, :price, :description, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: true
  belongs_to :supplier
  has_many :product_categories
  has_many :orders, through: :carted_products
  has_many :categories, through: :product_categories
  has_many :carted_products

  # validates :description, presence: true

  # def supplier
  #   supplier = Supplier.find(supplier_id)
  # end

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
