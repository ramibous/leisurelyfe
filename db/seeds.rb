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
  name: "Tommy Cafe",
  description: "A cozy cafe in Old Montreal",
  category: :restaurant,
  price_range: "$$ - $$$",
  price: 15,
  address: "200 rue Notre-Dame O, Montreal, Quebec H2Y 1Z5 Canada",
  longitude: -73.55742,
  latitude: 45.50371,
  kid_friendly: false,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0e/d9/3c/1b/20170401-160920-largejpg.jpg",
  start_time: '2024-06-13 11:30:00',
  end_time: '2024-06-13 15:00:00'
)

Recommendation.create!(
  name: "Resto Vego",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  price: 20,
  address: "1720, rue Saint-Denis, Montreal, Quebec H2X 3K6 Canada",
  longitude: -73.56461,
  latitude: 45.515472,
  kid_friendly: false,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0b/6e/31/b5/img-20160526-145559-largejpg.jpg",
  start_time: '2024-06-13 11:30:00',
  end_time: '2024-06-13 15:00:00'
)

Recommendation.create!(
  name: "Pizzedelic Boucherville",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  price: 18,
  address: "1155 Place Nobel # A, Boucherville, Quebec J4B 7L3 Canada",
  longitude: -73.44793,
  latitude: 45.571327,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0d/b2/c7/9c/photo0jpg.jpg",
  start_time: '2024-06-13 11:30:00',
  end_time: '2024-06-13 15:00:00'
)

Recommendation.create!(
  name: "Trattoria Trestevere",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  price: 25,
  address: "1237 rue Crescent, Montreal, Quebec H3G 2B1 Canada",
  longitude: -73.574974,
  latitude: 45.496826,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0e/02/b2/4e/photo0jpg.jpg",
  start_time: '2024-06-13 11:30:00',
  end_time: '2024-06-13 15:00:00'
)

Recommendation.create!(
  name: "Saiko Bistrot Izakaya",
  description: "The first Japanese gastro-bistro in the heart of the business district, Saikō Bistrot offers a distinctive dining experience. You will find traditional Japanese dishes from chefs Shatoshi and Shin Ichi-san. Saikō Bistrot is one of the first restaurants in Montreal that combines a sushi house and a Japanese bistro.",
  category: :restaurant,
  price_range: "$$ - $$$",
  price: 35,
  address: "1065 Cote Du Beaver-hall, Montreal, Quebec H2Z 1S5 Canada",
  longitude: -73.56474,
  latitude: 45.502373,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/1b/0a/ff/c6/photo0jpg.jpg",
  start_time: '2024-06-13 11:30:00',
  end_time: '2024-06-13 15:00:00'
)

Recommendation.create!(
  name: "Boustan",
  description: "Boustan is a Montreal-based restaurant known for its Middle-Eastern cuisine. Established in 1986, Boustan has been voted Best Middle-Eastern Restaurant in the Montreal Mirror in 2004, 2006, 2007, 2008, 2009, 2010, 2011 and 2012. Best Middle-Eastern and Late-Night Eats in the CultMTL Best of Montreal 2013, 2014, 2015 and 2016 editions.",
  category: :restaurant,
  price_range: "$",
  price: 10,
  address: "2020A Crescent, Montreal, Quebec H3G 2B6 Canada",
  longitude: -73.577644,
  latitude: 45.498184,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/08/8f/0a/18/boustan.jpg",
  start_time: '2024-06-13 11:30:00',
  end_time: '2024-06-13 15:00:00'
)

Recommendation.create!(
  name: "Pointe-a-Calliere, Montreal Archaeology and History Complex",
  description: "Pointe-a-Calliere, the birthplace of Montreal and a National Historic Site, offers visitors the opportunity to explore history through an original underground circuit leading through archaeological excavations. At the start of their visit, an immersive multimedia show presents a high-speed view of the city's history, the remains come to life and the count down begins! The museum also offers year-round temporary local and international exhibitions. For Montreal's 375th anniversary in May 2017, Pointe-a-Calliere inaugurated a new pavilion highlighting Fort Ville-Marie.",
  category: :attraction,
  price_range: "$$",
  price: 25,
  address: "350 Place Royale, Montreal, Quebec H2Y 3Y5 Canada",
  longitude: -73.55417,
  latitude: 45.502644,
  kid_friendly: false,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/07/d9/1b/8b/pointe-a-calliere-museum.jpg",
  start_time: '2024-06-13 11:30:00',
  end_time: '2024-06-13 15:00:00'
)

Recommendation.create!(
  name: "Le Passe Compose",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  price: 30,
  address: "1310 Boulevard de Maisonneuve East Àu Coin De La Visitation, Montreal, Quebec H2L 2A5 Canada",
  longitude: -73.55661,
  latitude: 45.520016,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/d7/5d/54/la-terrasse.jpg",
  start_time: '2024-06-13 11:30:00',
  end_time: '2024-06-13 15:00:00'
)
Recommendation.create!(
  name: "Restaurant Candide",
  description: "Le restaurant Candide welcomes you to their dining room. They are open at night from Wednesday to Sunday. You can pay by MasterCard, Visa, gift certificates and Interac.",
  category: :restaurant,
  price_range: "$$ - $$$",
  price: 110,
  address: "551 Rue St. Martin, Montreal, Quebec H3J 2L6 Canada",
  longitude: -73.56927,
  latitude: 45.48901,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0a/b8/dc/97/candide.jpg",
  start_time: '2024-06-13 11:30:00',
  end_time: '2024-06-13 15:00:00'
)

Recommendation.create!(
  name: "Mano Cornuto",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  price: 30,
  address: "988 Ottawa, Montreal, Quebec H3C 1S3 Canada",
  longitude: -73.55825,
  latitude: 45.49525,
  kid_friendly: false,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/1b/1b/db/b1/photo0jpg.jpg",
  start_time: '2024-06-13 11:30:00',
  end_time: '2024-06-13 15:00:00'
)

Recommendation.create!(
  name: "Notre Boeuf de Grace",
  description: "Fresh beef ground daily on site",
  category: :restaurant,
  price_range: "$$ - $$$",
  price: 30,
  address: "5732 Rue Sherbrooke O, Montreal, Quebec H4A 1W8 Canada",
  longitude: -73.61606,
  latitude: 45.470432,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/f8/4e/39/l-orozco.jpg",
  start_time: '2024-06-13 11:30:00',
  end_time: '2024-06-13 15:00:00'
)

Recommendation.create!(
  name: "Moghel Tandoori",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  price: 1000,
  address: "538 Avenue Victoria, Saint-Lambert, Quebec J4P 2J5 Canada",
  longitude: -73.51053,
  latitude: 45.50129,
  kid_friendly: false,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/07/94/5d/64/moghel-tandoori.jpg",
  start_time: '2024-06-13 11:30:00',
  end_time: '2024-06-13 15:00:00'
)
puts "Recommendations created successfully!"

# Print final counts for verification
puts "Final counts:"
puts "Recommendations: #{Recommendation.count}"
puts "Users: #{User.count}"

puts "Seeding completed successfully."
