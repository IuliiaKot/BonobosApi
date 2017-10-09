require 'rails_helper'

RSpec.describe Api::V1::ProductsController, type: :request do
  let!(:products) {
    [1,2,3,4].map do
      Product.create(product_name: "chinos", product_image: "", product_description: "white chinos")
    end
  }
  let!(:inventories) {
    [1,2,3,4].map do
      products.first.inventories.create(waist: [32,34,36, 38].sample, length: [32,34].sample, style: ['grey', 'white', 'red'].sample, count: [4,15,65,2].sample)
    end
  }
  let(:product_id) { products.first.id}


  describe 'GET /api/products' do
    before { get '/api/products' }

    it 'returns products' do
      # `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(4)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
  describe 'GET /api/products/:product_id/inventories' do
      before { get "/api/products/#{product_id}/inventories" }

      context 'when the record exists' do
        it 'returns the inventories' do
          expect(json).not_to be_empty
          # debugger
          expect(json[0]['product_id']).to eq(product_id)
        end

        it 'returns status code 200' do
          expect(response).to have_http_status(200)
        end
      end
    end
end
