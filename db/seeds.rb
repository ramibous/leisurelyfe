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
recommendations = [
  {
    name: "Native Toulrs",
    description: "Native Tours believes the perfect city tour is one tailored to your own likings and needs in order to become a fun and comprehensive excursion that will turn out to be the highlight of your vacation in Montreal.",
    category: "restaurant",
    price_range: "$$ - $$$",
    price: rand(10..100),
    address: "Montreal, Quebec Canada",
    longitude: -73.557274,
    latitude: 45.504864,
    kid_friendly: true,
    dog_friendly: true,
    outdoor: true,
    image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0a/88/c6/38/owner-guide.jpg",
    start_time: "14:30",
    end_time: "18:00",
    web_url: "https://www.tripadvisor.com/Attraction_Review-g155032-d9749286-Reviews-Native_Tours-Montreal_Quebec.html",
    email: "info@nativetours.ca",
    phone: nil,
    ranking_position: 14,
    rating: 5
  },
  {
    name: "TourBird",
    description: "Discover Montreal in a unique way with TourBird, offering tailored tours to explore the city.",
    category: "event",
    price_range: "$$ - $$$",
    price: rand(10..100),
    address: "Montreal, Quebec Canada",
    longitude: -73.5678,
    latitude: 45.5088,
    kid_friendly: true,
    dog_friendly: false,
    outdoor: true,
    image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/29/4b/29/5e/caption.jpg",
    start_time: "14:30",
    end_time: "18:00",
    web_url: "https://www.tripadvisor.com/Attraction_Review-g155032-d26168392-Reviews-TourBird-Montreal_Quebec.html",
    email: "info@tourbird.ca",
    phone: "+15148509782",
    ranking_position: 72,
    rating: 5
  },
  {
    name: "Artiris | Photographie D'iris A Montreal",
    description: "ARTÍRIS was founded in 2023 in Montreal. We have photographed more than 1,000 irises, and thanks to our success, we have moved to Montreal's Old Port district. Iris photography is an innovative and highly personal concept.Our irises are unique, so your creation will be one of a kind. We offer our customers the chance to transform their irises into works of art. Proudly a Quebec company, we offer all types of prints on various media (metal, acrylic, poster, canvas, epoxy canvas...). We ship worldwide from Quebec.",
    category: "restaurant",
    price_range: "$$ - $$$",
    price: rand(10..100),
    address: "228 Rue Saint Jacques, Montreal, Quebec H2Y 1L9 Canada",
    longitude: -73.57906,
    latitude: 45.53735,
    kid_friendly: true,
    dog_friendly: false,
    outdoor: false,
    image_url: "https://media-cdn.tripadvisor.com/media/photo-o/2b/4c/69/0c/photographie-d-iris-en.jpg",
    start_time: "14:30",
    end_time: "18:00",
    web_url: "https://www.tripadvisor.com/Attraction_Review-g155032-d26553156-Reviews-Artiris_Photographie_D_iris_A_Montreal-Montreal_Quebec.html",
    email: "allo@artiris-photo.com",
    phone: "+1 438-800-4330",
    ranking_position: 3,
    rating: 5
  },
  {
    name: "Photo Tour Montreal",
    description: "Photo Tour Montreal offers a 100% private photography tour of Montreal. It is run by Montreal pro-photographer & photography podcast publisher Marko Kulik. The photography tours take place by foot or by car and the locations can always be customized to suit you.",
    category: "event",
    price_range: "$$ - $$$",
    price: rand(10..100),
    address: "Montreal, Quebec Canada",
    longitude: -73.5678,
    latitude: 45.5088,
    kid_friendly: true,
    dog_friendly: false,
    outdoor: true,
    image_url: "https://media-cdn.tripadvisor.com/media/photo-o/26/06/4d/7a/photo-tour-montreal.jpg",
    start_time: "14:30",
    end_time: "18:00",
    web_url: "https://www.tripadvisor.com/Attraction_Review-g155032-d26468392-Reviews-Photo_Tour_Montreal-Montreal_Quebec.html",
    email: "info@phototourmontreal.com",
    phone: "+1 514-999-1234",
    ranking_position: 1,
    rating: 5
  },
  {
    name: "H2O Adventures",
    description: "H2O Adventures offers a variety of water sports activities in Montreal, including kayaking, canoeing, and paddleboarding.",
    category: "event",
    price_range: "$$ - $$$",
    price: rand(10..100),
    address: "Montreal, Quebec Canada",
    longitude: -73.5673,
    latitude: 45.5017,
    kid_friendly: false,
    dog_friendly: false,
    outdoor: true,
    image_url: "https://media-cdn.tripadvisor.com/media/photo-o/26/06/4d/7a/h2o-adventures.jpg",
    start_time: "14:30",
    end_time: "18:00",
    web_url: "https://www.tripadvisor.com/Attraction_Review-g155032-d23468392-Reviews-H2O_Adventures-Montreal_Quebec.html",
    email: "info@h2oadventures.com",
    phone: "+1 514-842-1306",
    ranking_position: 10,
    rating: 4
  },
  {
    name: "Gibson Salon Spa",
    description: "An unforgettable escape in the heart of the city... Gibson Salon Spa in the Fairmont Queen Elizabeth hotel invites you to discover the finest spa experience in Montreal. Our warm and tranquil surroundings provide the perfect environment to escape from daily stress. For total mind and body relaxation, we offer a full array of treatments and services. Discover complete serenity and wellness through massage therapy, facial care, body care, full esthetic services and hairstyling. Quality, attention to detail and luxurious surroundings will make for a unique and exquisite visit. An unforgettable spa experience awaits you at Gibson Salon Spa.",
    category: "event",
    price_range: "$$ - $$$",
    price: rand(10..100),
    address: "S1 level 900 Rene-Levesque Ouest Fairmont Queen Elizabeth Hotel, Montreal, Quebec H3B 1X8 Canada",
    longitude: -73.56783,
    latitude: 45.500668,
    kid_friendly: false,
    dog_friendly: false,
    outdoor: false,
    image_url: "https://media-cdn.tripadvisor.com/media/photo-o/05/63/a6/1f/gibson-salon-spa.jpg",
    start_time: "14:30",
    end_time: "18:00",
    web_url: "https://www.tripadvisor.com/Attraction_Review-g155032-d5027203-Reviews-Gibson_Salon_Spa-Montreal_Quebec.html",
    email: "info@gibsonspa.com",
    phone: "+1 514-866-6639",
    ranking_position: 27,
    rating: 4
  }
]

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
