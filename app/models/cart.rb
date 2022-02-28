class Cart < ApplicationRecord
  belongs_to :product

  def self.total_price
    sum = 0
    Cart.all.each do|c|
      sum += c.quality * c.product.price
    end
    sum
  end
end
