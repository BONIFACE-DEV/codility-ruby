# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Restaurant.create(name: "Baba NYC", address: "281 Jogoo Rd, Atlanta, NB 99992")
Restaurant.create(name: "Raila LA", address: "500 Moi Avenue, Brooklyn, NK 7719")
Restaurant.create(name: "Odinga Vegas", address: "298 Atlantic Ave, Brooklyn, LD 6129")
Restaurant.create(name: "Amolo Miami", address: "992 Run Ave, Brooklyn, NY 68294")

Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")

RestaurantPiza.create(price:10, pizza_id: 2, restaurant_id: 2)
RestaurantPiza.create(price:5, pizza_id: 3, restaurant_id: 2)
RestaurantPiza.create(price:3, pizza_id: 2, restaurant_id: 4)