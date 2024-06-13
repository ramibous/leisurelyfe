puts "Deleting previous data..."
Favorite.destroy_all
Recommendation.destroy_all
User.destroy_all
puts "Done!"

puts "Creating Users..."
users = []
users << User.create!(email: "rami@gmail.com", password: "123456")
users << User.create!(email: "justin@gmail.com", password: "123456")
users << User.create!(email: "victory@gmail.com", password: "123456")
puts "Done!"

puts "Creating recommendations..."

Recommendation.create!(
  name: "Jean-Talon Market",
  description: "One of Montreal's largest public markets, known for fresh produce and local products.",
  category: :shopping,
  price_range: "$5 - $$$",
  price: 0,
  address: "7070 Avenue Henri-Julien, Montreal, Quebec H2S 3S3 Canada",
  longitude: -73.614685,
  latitude: 45.536241,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://images.happycow.net/venues/1024/13/61/hcmp136172_1332951.jpeg",
  start_time: '2024-06-14 08:00:00',
  end_time: '2024-06-14 18:00:00'
)

Recommendation.create!(
  name: "Montreal Eaton Centre",
  description: "A large shopping mall with a variety of stores, food court, and services.",
  category: :shopping,
  price_range: "$ - $$$",
  price: 5,
  address: "705 Rue Sainte-Catherine O, Montreal, Quebec H3B 4G5 Canada",
  longitude: -73.571404,
  latitude: 45.502586,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://smartcdn.gprod.postmedia.digital/nationalpost/wp-content/uploads/2012/05/eaton.jpg",
  start_time: '2024-06-14 10:00:00',
  end_time: '2024-06-14 21:00:00'
)
Recommendation.create!(
  name: "Montreal: Ecomuseum Zoo",
  description: "See a variety of wildlife including Black Bear, Wolves, Foxes, Eagles and more",
  category: :zoo,
  price: 24.75,
  address: "21125 Sainte Marie Rd, Sainte-Anne-de-Bellevue, Quebec H9X 3Y7",
  longitude: -73.93478780707474,
  latitude: 45.42571305750004,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://cdn.getyourguide.com/img/tour/8901013b6cc7e4694f3ebff617429974203d559a45e8386cbc0e93a1c992bbda.jpeg/145.jpg",
  start_time: "11:00:00",
  end_time: "15:00:00"
)

Recommendation.create!(
  name: "Montreal: Private Day Tour to Parc Omega & Montebello Lodge",
  description: "Explore Montreal's beautiful surrounding areas on a private day tour",
  category: :zoo,
  price: 413,
  address: "399 Route 323 Nord, Montebello, QC J0V 1L0",
  longitude: -74.94370378742934,
  latitude: 45.682514881676504,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://cdn.getyourguide.com/img/tour/5e50ac8a822ce.jpeg/145.jpg",
  start_time: "11:00:00",
  end_time: "15:00:00"
)
puts "Recommendations created successfully!"

# Print final counts for verification
puts "Final counts:"
puts "Recommendations: #{Recommendation.count}"
puts "Users: #{User.count}"

puts "Seeding completed successfully."
