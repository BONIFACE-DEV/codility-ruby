# PIZZAS

#  Set Up
To set up this project locally, follow the following  steps:

# 1.Clone this repository to your local machine using git clone https://github.com/BONIFACE-DEV/Pizzas.git

# 2. cd into the project directory

# 3. Run bundle install command to install  gem files

# 4. Run rails db:migrate command to create the database tables

# 5. Run rails db:seed command to populate the database with sample data

# 6. Start the server with rails server command using rails s

# 7  Use Postman or insomnia to make requests to the API endpoints


## Project Guidelines

Your project should conform to the following set of guidelines:

## Models

You need to create the following relationships:

- A `Restaurant` has many `Pizza`s through `RestaurantPizza`
- A `Pizza` has many `Restaurant`s through `RestaurantPizza`
- A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza`

Start by creating the models and migrations for the following database tables:

domain-1.png

Add any code needed in the model files to establish the relationships. Then, run the migrations.

You are welcome to generate your own seed data to test the application.

Validations
Add validations to the `RestaurantPizza` model:

- must have a `price` between 1 and 30

## Routes

Set up the following routes. Make sure to return JSON data in the format
specified along with the appropriate HTTP verb.

GET /restaurants
Return JSON data in the format below:

[
{
"id": 1,
"name": "Sottocasa NYC",
"address": "298 Atlantic Ave, Brooklyn, NY 11201"
},
{
"id": 2,
"name": "PizzArte",
"address": "69 W 55th St, New York, NY 10019"
}
]

GET /restaurants/:id
If the `Restaurant` exists, return JSON data in the format below:

{
"id": 1,
"name": "Sottocasa NYC",
"address": "298 Atlantic Ave, Brooklyn, NY 11201",
"pizzas": [
{
"id": 1,
"name": "Cheese",
"ingredients": "Dough, Tomato Sauce, Cheese"
},
{
"id": 2,
"name": "Pepperoni",
"ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
}
]
}

If the `Restaurant` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

{
"error": "Restaurant not found"
}

## DELETE /restaurants/:id

If the `Restaurant` exists, it should be removed from the database, along with
any `RestaurantPizza`s that are associated with it (a `RestaurantPizza` belongs
to a `Restaurant`, so you need to delete the `RestaurantPizza`s before the
`Restaurant` can be deleted).

After deleting the `Restaurant`, return an empty response body, along with the
appropriate HTTP status code.

If the `Restaurant` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

{
"error": "Restaurant not found"
}

GET /pizzas
Return JSON data in the format below:

[
{
"id": 1,
"name": "Cheese",
"ingredients": "Dough, Tomato Sauce, Cheese"
},
{
"id": 2,
"name": "Pepperoni",
"ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
}
]

POST /restaurant_pizzas
This route should create a new `RestaurantPizza` that is associated with an
existing `Pizza` and `Restaurant`. It should accept an object with the following
properties in the body of the request:

{
"price": 5,
"pizza_id": 1,
"restaurant_id": 3
}

If the `RestaurantPizza` is created successfully, send back a response with the data
related to the `Pizza`:

{
"id": 1,
"name": "Cheese",
"ingredients": "Dough, Tomato Sauce, Cheese"
}

If the `RestaurantPizza` is not created successfully, return the following
JSON data, along with the appropriate HTTP status code:

{
"errors": ["validation errors"]
}


Entity Relationship Diagram
![alt text](/ERD.png)
