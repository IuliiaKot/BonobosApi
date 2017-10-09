require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) { FactoryGirl.build :product }
  subject { product }

  it { should respond_to(:product_name) }
  it { should respond_to(:product_image) }
  it { should respond_to(:product_description) }
  it { should have_many :inventories }
end
