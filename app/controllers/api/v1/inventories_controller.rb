class Api::V1::InventoriesController < ApplicationController
  respond_to :json

  def index
    product = Product.find_by(id: params[:product_id])
    respond_with product.inventories
  end
end
