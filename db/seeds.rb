require "faker"

puts"Deleting users..."

User.delete_all

puts 'Creating 10 new users...'
10.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "123456",
    last_name: Faker::Name.last_name,
    first_name: Faker::Name.first_name,
    age: rand(Date.civil(1975, 1, 1)..Date.civil(2019, 12, 31)),
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence
    )
 user.save!
end

 puts "users created !"
