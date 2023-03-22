class RestaurantPiza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizza

  validates :price, presence: true, numericality: { in: 1..30 }
end
