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
  price_range: nil,
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

Recommendation.create!(
  name: "Angrignon Park",
  description: "A large park with walking trails and open spaces, perfect for dogs on leashes.",
  category: :park,
  price_range: nil,
  price: 0,
  address: "3400 Boulevard Trinitaires, Montreal, Quebec H4E 4J3 Canada",
  longitude: -73.614642,
  latitude: 45.448631,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/BBQ_in_Angrignon_park_-_panoramio.jpg/1280px-BBQ_in_Angrignon_park_-_panoramio.jpg",
  start_time: '2024-06-14 08:00:00',
  end_time: '2024-06-14 21:00:00'
)

Recommendation.create!(
  name: "Mount Royal Park",
  description: "A large park with trails and a beautiful view of the city, perfect for walking dogs.",
  category: :park,
  price_range: nil,
  price: 0,
  address: "1260 Remembrance Road, Montreal, Quebec H3H 1A2 Canada",
  longitude: -73.58781,
  latitude: 45.50169,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://a.travel-assets.com/findyours-php/viewfinder/images/res70/48000/48956-Montreal.jpg",
  start_time: '2024-06-14 08:00:00',
  end_time: '2024-06-14 20:00:00'
)

Recommendation.create!(
  name: "Au Pied de Cochon",
  description: "Known for decadent foie gras poutine and other hearty Québécois dishes.",
  category: :street_food,
  price_range: "$10 - $15",
  price: 0,
  address: "536 Avenue Duluth E, Montreal, Quebec H2L 1A9 Canada",
  longitude: -73.57696,
  latitude: 45.51995,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://resizer.otstatic.com/v2/photos/wide-huge/1/59854044.jpg",
  start_time: '2024-06-14 17:00:00',
  end_time: '2024-06-14 23:00:00',
  rating: 4
)

Recommendation.create!(
  name: "La Banquise",
  description: "Iconic spot for poutine, offering a variety of toppings and combinations.",
  category: :street_food,
  price_range: "$12 -$15",
  price: 0,
  address: "994 Rue Rachel E, Montreal, Quebec H2J 2J3 Canada",
  longitude: -73.57537,
  latitude: 45.53365,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://offloadmedia.feverup.com/secretldn.com/wp-content/uploads/2021/05/25131508/shutterstock_1184320111-2.jpg",
  start_time: '2024-06-14 11:00:00',
  end_time: '2024-06-14 23:00:00',
  rating: 4
)

Recommendation.create!(
  name: "Montreal Biodome",
  description: "Ecosystems from the Americas under one roof, featuring animals, plants, and interactive exhibits.",
  category: :kids_activity,
  price_range: "$25 - $50",
  price: 0,
  address: "4777 Avenue Pierre-De Coubertin, Montreal, Quebec H1V 1B3 Canada",
  longitude: -73.55107,
  latitude: 45.55911,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://www.mtl.org/sites/default/files/styles/playlist_banner_big/public/2022-12/45984.jpg?itok=w0m_UXTG",
  start_time: '2024-06-14 09:00:00',
  end_time: '2024-06-14 18:00:00',
  rating: 4
)

Recommendation.create!(
  name: "Montreal Science Centre",
  description: "Interactive science museum with hands-on exhibits and an IMAX theatre.",
  category: :kids_activity,
  price_range: nil,
  price: 20,
  address: "2 Rue de la Commune O, Montreal, Quebec H2Y 4B2 Canada",
  longitude: -73.55482,
  latitude: 45.50687,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://www.montrealsciencecentre.com/sites/default/files/styles/440_320/public/2020-10/digimg_8918v2_0.jpeg?h=c1f10704&itok=jkKOEJ4F",
  start_time: '2024-06-14 10:00:00',
  end_time: '2024-06-14 17:00:00',
  rating: 4
)

puts "Recommendations created successfully!"

# Print final counts for verification
puts "Final counts:"
puts "Recommendations: #{Recommendation.count}"
puts "Users: #{User.count}"

puts "Seeding completed successfully."
