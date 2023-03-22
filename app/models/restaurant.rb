class Restaurant < ApplicationRecord
    has_many :restaurantPizas
    has_many :pizzas, through: :restaurantPizas
end
