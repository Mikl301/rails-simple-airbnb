# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating flats...'
10.times do
  random_house_picture = "https://source.unsplash.com/#{rand(1500..1600)}x#{rand(850..950)}/?house"
  Flat.create!(
    name: "#{Faker::JapaneseMedia::OnePiece.island} House",
    address: Faker::JapaneseMedia::OnePiece.location,
    description: Faker::Movies::HarryPotter.quote,
    picture_url: random_house_picture,
    price_per_night: rand(50..100),
    number_of_guests: rand(2..6)
  )
end
puts 'Finished!'
