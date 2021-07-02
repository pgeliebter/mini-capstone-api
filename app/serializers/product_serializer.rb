class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :description, :price, :is_discounted?, :tax, :total
  belongs_to :supplier
  has_many :categories
end
