# SA-01: Phase 4 Code Challenge: Pizzas

## Learning Goals:
Implement a 'mini' Rails application that implements associations.

## Requirements
For this project, I am required to:

Create a Rails API backend.
Have at least three resources (three DB tables).

## MODEL Deliverables
You need to create the following relationships:

- A `Restaurant` has many `Pizza`s through `RestaurantPizza`
- A `Pizza` has many `Restaurant`s through `RestaurantPizza`
- A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza`

![](/readme_resources/dbdiag.png)


## VALIDATIONS Deliverables
Add validations to the `RestaurantPizza` model:

- must have a `price` between 1 and 30
![](/readme_resources/VAL.png)
## ROUTES Deliverables:
Set up the following routes. Make sure to return JSON data in the format specified along with the appropriate HTTP verb.

#### GET /restaurants
Return JSON data in the format below:

```
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
```
![](/readme_resources/GET.png)

#### GET /restaurants/:id
If the `Restaurant` exists, return JSON data in the format below:

```
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
```
![](/readme_resources/SHOW.png)

If the `Restaurant` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Restaurant not found"
}
```
![](/readme_resources/SHOW2.png)

#### DELETE /restaurants/:id
If the `Restaurant` exists, it should be removed from the database, along with any `RestaurantPizza`s that are associated with it.

![](/readme_resources/DELETE.png)

If the `Restaurant` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Restaurant not found"
}
```
![](/readme_resources/DELETE2.png)

#### GET /pizzas
Return JSON data in the format below:

```
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
```
![](/readme_resources/GETPIZZAS.png)

#### POST /restaurant_pizzas
This route should create a new `RestaurantPizza` that is associated with an existing `Pizza` and `Restaurant`. It should accept an object with the following properties in the body of the request:

```
{
  "price": 5,
  "pizza_id": 1,
  "restaurant_id": 3
}
```

If the `RestaurantPizza` is created successfully, send back a response with the data
related to the `Pizza`:

```
{
  "id": 1,
  "name": "Cheese",
  "ingredients": "Dough, Tomato Sauce, Cheese"
}
```
![](/readme_resources/RESPIZZ.png)

If the `RestaurantPizza` is **not** created successfully, return the following
JSON data, along with the appropriate HTTP status code:

```
{
  "errors": ["validation errors"]
}

```
![](/readme_resources/UNPRO.png)