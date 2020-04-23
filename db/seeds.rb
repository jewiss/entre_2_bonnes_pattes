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
    age: rand(20..50),
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence
    )
 user.save!
end

 puts "users created !"
