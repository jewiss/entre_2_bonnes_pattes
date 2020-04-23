# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 10 users'
10.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "123456",
    admin: false,
    last_name: Faker::name.last_name,
    first_name: Faker::name.first_name,
    age: rand(20..50),
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence
    )
  "users created !"
end
