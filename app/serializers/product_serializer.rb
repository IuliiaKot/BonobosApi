class ProductSerializer < ActiveModel::Serializer
  attributes :id, :product_name, :product_image, :product_description
  has_many :inventories
end
