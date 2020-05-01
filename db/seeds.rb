require "faker"

puts"Deleting users..."

User.delete_all

puts 'Creating 10 new users...'
number_address = 1
10.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "123456",
    last_name: Faker::Name.last_name,
    first_name: Faker::Name.first_name,
    age: rand(Date.civil(1975, 1, 1)..Date.civil(2019, 12, 31)),
    address: "#{number_address} avenue Champs Elysées, 75008 PARIS FRANCE" ,
    description: Faker::Lorem.sentence
    )
 user.save!
 number_address += 10
end
puts "users created !"

puts"Deleting species..."

Specie.delete_all
puts 'Creating Species'
species = ["chien", "chat", "oiseau"]
species.each do |specie|
  x = Specie.new(type_animal: specie)
  x.save!
end
puts "species created !"

puts"Deleting bleeds..."

Bleed.delete_all
puts 'Creating Breeds'
breeds = ["Spitz", "Bichon maltais", "Berger Australien"]
breeds.each do |breed|
  x = Bleed.new(bleed_name: breed)
  x.save!
end
puts "breeds created !"


