class Api::V1::ProductsController < ApplicationController
  respond_to :json

  def index
    # @products  = Product.all
    # respond_with @products
  end

end
