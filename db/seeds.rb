require 'faker'

puts "go"

Restaurant.destroy_all

5.times do
  Restaurant.create(
    name: Faker::Name.name,
    category: Restaurant::CATEGORIES.sample,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone
  )
end
puts "finiiiii"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
