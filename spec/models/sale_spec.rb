require 'rails_helper'

RSpec.describe Sale do
  let(:sale) {Sale.new}

  it "should not be valid without item_price" do
    expect(sale).not_to be_valid
  end

  it "should not be valid without purchase_count" do
    expect(sale).not_to be_valid
  end

  it "should be valid" do
    sale.item_price = 10.0
    sale.purchase_count = 1

    expect(sale).to be_valid
  end

  it "should calculate sale value" do
    sale.item_price = 15.0
    sale.purchase_count = 2

    expect(sale.sale_value).to eq(30.0)
  end 
end
