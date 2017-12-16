class Sale < ApplicationRecord
  validates_numericality_of :item_price, :greater_than => 0
  validates_numericality_of :purchase_count, :greater_than => 0

  def sale_value
    item_price * purchase_count
  end
end
