# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
timraue = User.create!(email: "tim.raue@web.de", first_name: "Tim", last_name: "Raue", password: "123123")
dylan = User.create!(email: "dylan.boi@web.de", first_name: "Dylan", last_name: "Mertens", password: "123123")

Restaurant.delete_all
restaurants = Restaurant.create!(name: 'Tim Raue', address: "Rudi-Dutschke-Straße 7",  cuisine: "deutsche küche", owner: timraue)
restaurants = Restaurant.create!(name: 'Dylans Küsche', address: "Spreeufer 3",  cuisine: "deutsche küche", owner: dylan)


