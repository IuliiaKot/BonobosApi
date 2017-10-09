require 'rails_helper'

RSpec.describe Api::V1::ProductsController, type: :request do
  describe 'GET /api/products.json' do
    # make HTTP get request before each example
    before { get '/api/products.json' }

    it 'returns products' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
