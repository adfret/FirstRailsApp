# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1=User.create(name: "John Tyrus", location: "Hollywood, Florida")
user2=User.create(name: "Bill Timons", location: "Sarasota, Florida")

restaurant1=Restaurant.create(name: "Jill Smith Foods", location: "Norwalk, Florida", food_type: "spicy")
restaurant2=Restaurant.create(name: "Jill Smith Foods 2", location: "Beach, Florida", food_type: "tangy")

review1=Review.create(name: "Jill Smith Foods", user: user1, restaurant: restaurant1, rating: 4)
review2=Review.create(name: "Jill Smith Foods 2", user: user2, restaurant: restaurant2, rating: 5)
