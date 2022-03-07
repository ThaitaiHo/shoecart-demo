class Product < ApplicationRecord
  has_one :cart

  validates :name, :description, :image, :color, :price, presence: true
end
