class InventorySerializer < ActiveModel::Serializer
  attributes :id, :waist, :length, :style, :count
  belongs_to :product
end
