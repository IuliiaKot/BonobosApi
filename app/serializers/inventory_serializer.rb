class InventorySerializer < ActiveModel::Serializer
  attributes :id, :product_id, :waist, :length, :style, :count
  # belongs_to :product
end
