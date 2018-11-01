# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning DB..."
Ingredient.delete_all
Cocktail.delete_all

puts "Making new ingredients..."

Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "mint leaves")
Ingredient.create!(name: "Vodka")
Ingredient.create!(name: "Rum")
Ingredient.create!(name: "mint leaves")
Ingredient.create!(name: "mint leaves")
Ingredient.create!(name: "mint leaves")
Ingredient.create!(name: "mint leaves")
Ingredient.create!(name: "mint leaves")

puts "Ingredients created!"

puts "Making cocktails!"

Cocktail.create!(name: "Pina Colida")
Cocktail.create!(name: "Bloody Mary")

puts "Cocktails created!"


