require 'rails_helper'

RSpec.describe InventoriesController, type: :request do
  describe 'GET /api/products/:product_id/inventories' do
      before { get "/todos/#{todo_id}" }

      context 'when the record exists' do
        it 'returns the todo' do
          expect(json).not_to be_empty
          expect(json['id']).to eq(todo_id)
        end

        it 'returns status code 200' do
          expect(response).to have_http_status(200)
        end
      end

      context 'when the record does not exist' do
        let(:todo_id) { 100 }

        it 'returns status code 404' do
          expect(response).to have_http_status(404)
        end

        it 'returns a not found message' do
          expect(response.body).to match(/Couldn't find Todo/)
        end
      end
    end
end
