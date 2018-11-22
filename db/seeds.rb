# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
tim = User.create!(email: "tim.raue@web.de", first_name: "Tim", last_name: "Raue", password: "123123")

Restaurant.delete_all
restaurants = Restaurant.create!(name: 'Tim Raue', address: "Rudi-Dutschke-Str. 26, 10969 Berlin",  cuisine: "modern european", user: tim)
restaurants = Restaurant.create!(name: 'Little Green Rabbit', address: "Friedrichstr. 200, 10117 Berlin",  cuisine: "salad", user: tim)
restaurants = Restaurant.create!(name: 'Charlotte 1', address: "Charlottenstr. 1, 10969 Berlin",  cuisine: "gastropub", user: tim)
restaurants = Restaurant.create!(name: 'Avan', address: "Mauerstr. 81, 10117 Berlin",  cuisine: "asian", user: tim)
restaurants = Restaurant.create!(name: 'Ishin', address: "Charlottenstr. 16, 10117 Berlin",  cuisine: "japanese", user: tim)
restaurants = Restaurant.create!(name: 'Goodtime', address: "Hausvogteiplatz 11, 10117 Berlin",  cuisine: "asian", user: tim)
restaurants = Restaurant.create!(name: 'Ristorante Sale e Tabacchi', address: "Rudi-Dutschke-Str. 23, 10969 Berlin",  cuisine: "italian", user: tim)
restaurants = Restaurant.create!(name: 'Otito', address: "Leipziger Str. 30, 10117 Berlin",  cuisine: "vietnamese", user: tim)
restaurants = Restaurant.create!(name: 'Kirsons Charlotte', address: "Charlottenstr. 13, 10969",  cuisine: "eastern european", user: tim)
restaurants = Restaurant.create!(name: 'Chupenga', address: "Charlottenstr. 4, 10969 Berlin",  cuisine: "burrito", user: tim)

