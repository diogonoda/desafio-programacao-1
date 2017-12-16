require 'rails_helper'

RSpec.describe SalesImporter do
  describe "import example file" do
    let(:example_input) do
      fixture_file_upload(Rails.root.join('spec', 'fixtures', 'example_input.tab'), "text/csv")
    end

    it "should import file successfully" do
      total_sales_value = SalesImporter.importer(example_input)

      expect(total_sales_value).to eq(95.0)
    end

    it "should save records to database" do
      expect{
        total_sales_value = SalesImporter.importer(example_input)
      }.to change{Sale.count}
    end
  end
end
