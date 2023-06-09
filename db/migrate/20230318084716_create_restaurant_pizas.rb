class CreateRestaurantPizas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizas do |t|
      t.float :price
      t.references :restaurant, null: false, foreign_key: true
      t.references :pizza, null: false, foreign_key: true

      t.timestamps
    end
  end
end
