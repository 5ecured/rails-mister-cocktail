# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "creating ingredients"
Ingredient.destroy_all
Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "mint leaves")
Ingredient.create!(name: "sprite")
Ingredient.create!(name: "coke")
puts "done!"

puts "creating cocktails"
Cocktail.destroy_all
Cocktail.create!(name: "cocktail one")
Cocktail.create!(name: "cocktail two")
Cocktail.create!(name: "cocktail three")
Cocktail.create!(name: "cocktail four")
Cocktail.create!(name: "cocktail five")
puts "done!"
