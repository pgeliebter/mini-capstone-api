class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :is_discounted?, :tax, :total

  belongs_to :supplier
  has_many :categories
  belongs_to :supplier
  has_many :categories
  has_many :images
end
