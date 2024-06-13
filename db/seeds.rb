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
