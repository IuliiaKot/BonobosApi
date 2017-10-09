require 'rails_helper'

RSpec.describe Inventory, type: :model do
  let(:inventory) { FactoryGirl.build :inventory }
  subject { inventory }

  it { should respond_to(:waist) }
  it { should respond_to(:length) }
  it { should respond_to(:style) }
  it { should belong_to :product }
end
