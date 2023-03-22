class Pizza < ApplicationRecord
    has_many :restaurantPizas
    has_many :restaurants, through: :restaurantPizas
end
