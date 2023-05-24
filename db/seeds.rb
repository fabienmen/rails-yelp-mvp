require "faker"

puts "Cleaning database..."
Restaurant.destroy_all

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save
end

puts "Finished!"
