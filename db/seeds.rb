# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MenuItem.destroy_all

MenuItem.create(name: "Latte", price: 4.00)
MenuItem.create(name: "Tea", price: 3.00)
MenuItem.create(name: "Scone", price: 5.00)