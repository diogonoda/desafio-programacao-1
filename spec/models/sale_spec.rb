require 'rails_helper'

RSpec.describe Sale do
  let(:sale) {Sale.new}

  it "should not be valid without item_price" do
    expect(sale).not_to be_valid
  end

  it "should not be valid without purchase_count" do
    expect(sale).not_to be_valid
  end

  it "should be a valid sale record" do
    sale.item_price = 10.0
    sale.purchase_count = 1

    expect(sale).to be_valid
  end
end
