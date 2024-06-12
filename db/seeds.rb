require 'faker'
require 'date'
require 'json'

def random_time_range
  start_hour = rand(8..11)
  end_hour = rand(17..21)
  [DateTime.parse("#{Date.today} #{start_hour}:00:00-04:00"), DateTime.parse("#{Date.today} #{end_hour}:00:00-04:00")]
end

def random_boolean
  [true, false].sample
end

puts "Starting the seeding process..."

# Print initial counts for debugging
puts "Initial counts:"
puts "Favorites: #{Favorite.count}"
puts "Recommendations: #{Recommendation.count}"
puts "Users: #{User.count}"

# Ensure favorites are deleted first to avoid foreign key constraint violations
puts "Deleting favorites..."
Favorite.delete_all

# Now delete recommendations
puts "Deleting recommendations..."
Recommendation.delete_all

# Now delete users
puts "Deleting users..."
User.delete_all

# Print counts after deletion for verification
puts "Counts after deletion:"
puts "Favorites: #{Favorite.count}"
puts "Recommendations: #{Recommendation.count}"
puts "Users: #{User.count}"

puts "Creating Users..."
users = [
  User.create!(email: "rami@gmail.com", password: "123456"),
  User.create!(email: "justin@gmail.com", password: "123456"),
  User.create!(email: "victory@gmail.com", password: "123456")
]
puts "Done!"

puts "Creating recommendations..."
categories = {
  "beach" => "https://example.com/beach.jpg",
  "restaurant" => "https://example.com/restaurant.jpg",
  "biking" => "https://example.com/biking.jpg",
  "pets" => "https://example.com/pets.jpg",
  "shopping" => "https://example.com/shopping.jpg",
  "transport" => "https://example.com/transport.jpg",
  "park" => "https://example.com/park.jpg",
  "street_food" => "https://www.oldportofmontreal.com/sites/default/files/styles/teaser/public/2024-05/principale.jpg?itok=p0DQHdQ6",
  "outdoor" => "https://www.ontarioparks.ca/parksblog/wp-content/uploads/2021/07/Untitled-design-36-825x510.jpg",
  "dogs_activity" => "https://www.pedigree.com/cdn-cgi/image/height=617,f=auto,quality=90/sites/g/files/fnmzdf3076/files/2023-05/8-fun-indoor-activities-dogs-540x300.png",
  "kids_activity" => "https://img.freepik.com/free-photo/children-having-fun-summer-camp_23-2150326044.jpg?t=st=1718212186~exp=1718215786~hmac=56f5f3f931c2ad89c4154a55423fcda32614e2cac1b2c6b08e937a1ea5c63c6a&w=1060",
}

recommendations = []

50.times do
  category = categories.keys.sample
  recommendations << {
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(word_count: 10),
    category: category,
    price_range: "$$ - $$$",
    price: rand(10..100),
    address: Faker::Address.full_address,
    longitude: Faker::Address.longitude,
    latitude: Faker::Address.latitude,
    kid_friendly: random_boolean,
    dog_friendly: random_boolean,
    outdoor: random_boolean,
    image_url: categories[category],
    start_time: "14:30",
    end_time: "18:00",
    web_url: Faker::Internet.url,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    ranking_position: rand(1..100),
    rating: rand(1..5)
  }
end

recommendations.each do |rec|
  rec[:category] = rec[:category].to_sym if rec[:category].is_a?(String)
  rec[:email] = Faker::Internet.email if rec[:email] == "None"
  rec[:phone] = Faker::PhoneNumber.phone_number if rec[:phone] == "None"
  # Ensure category is valid
  rec[:category] = :unknown unless Recommendation.categories.keys.include?(rec[:category].to_s)
  Recommendation.create!(rec)
end

puts "Recommendations created successfully!"

puts "Creating favorites..."
Favorite.create!(user: users.first, recommendation: Recommendation.first)
Favorite.create!(user: users.last, recommendation: Recommendation.last)
puts "Favorites created successfully!"

# Print final counts for verification
puts "Final counts:"
puts "Favorites: #{Favorite.count}"
puts "Recommendations: #{Recommendation.count}"
puts "Users: #{User.count}"

puts "Seeding completed successfully."
