require 'faker'
require 'date'

def random_time_range
  start_hour = rand(8..11)
  end_hour = rand(17..21)
  [DateTime.parse("#{Date.today} #{start_hour}:00:00-04:00"), DateTime.parse("#{Date.today} #{end_hour}:00:00-04:00")]
end

def random_boolean
  [true, false].sample
end

puts "Deleting previous data..."
Recommendation.destroy_all
User.destroy_all
puts "Done!"

puts "Creating Users..."
User.create!(email: "rami@gmail.com", password: "123456")
User.create!(email: "justin@gmail.com", password: "123456")
User.create!(email: "victory@gmail.com", password: "123456")
puts "Done!"

puts "Creating recommendations..."

Recommendation.create!(
  name: "Tommy Cafe",
  description: "Charming cafe with a wide selection of pastries and coffee.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "200 rue Notre-Dame O, Montreal, Quebec H2Y 1Z5 Canada",
  longitude: -73.55742,
  latitude: 45.50371,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0e/d9/3c/1b/20170401-160920-largejpg.jpg",
  start_time: random_time_range[0],
  end_time: random_time_range[1]
)

Recommendation.create!(
  name: "Modavie",
  description: "Seven nights a week, local bands take the stage at Montreal's hottest Jazz bar and bistro.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1 Saint Paul St W, Montreal, Quebec H2Y 1Y6 Canada",
  longitude: -73.5539,
  latitude: 45.505527,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/14/05/ea/55/restaurant.jpg",
  start_time: random_time_range[0],
  end_time: random_time_range[1]
)

Recommendation.create!(
  name: "McGill University",
  description: "Canada's oldest university, home to nearly 30,000 students, is filled with a variety of interesting architectural styles.",
  category: :attraction,
  price_range: "$$",
  address: "845 Sherbrooke Street West (At McGill College), Montreal, Quebec H3A 0B9 Canada",
  longitude: -73.57715,
  latitude: 45.504795,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/07/27/5f/e4/mcgill-university.jpg",
  start_time: random_time_range[0],
  end_time: random_time_range[1]
)

Recommendation.create!(
  name: "La Boulette",
  description: "Popular spot for gourmet burgers and fries.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "2223 Rue Beaubien E, Montreal, Quebec H2G 1M8 Canada",
  longitude: -73.5937,
  latitude: 45.546574,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/14/36/55/img-20170408-192159-516.jpg",
  start_time: random_time_range[0],
  end_time: random_time_range[1]
)

Recommendation.create!(
  name: "Omnivore",
  description: "A variety of healthy, flavorful dishes including vegan options.",
  category: :restaurant,
  price_range: "$",
  address: "4351 Saint-Laurent Blvd, Montreal, Quebec H2W 1Z8 Canada",
  longitude: -73.583755,
  latitude: 45.518837,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/23/87/3c/39/omnivore-herbivore-carnivore.jpg",
  start_time: random_time_range[0],
  end_time: random_time_range[1]
)

Recommendation.create!(
  name: "Drogheria Fine",
  description: "Authentic Italian dishes and a cozy atmosphere.",
  category: :restaurant,
  price_range: "$",
  address: "68 Avenue Fairmount O, Montreal, Quebec H2T 2M2 Canada",
  longitude: -73.59523,
  latitude: 45.52303,
  kid_friendly: false,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/61/73/ba/photo1jpg.jpg",
  start_time: random_time_range[0],
  end_time: random_time_range[1]
)

Recommendation.create!(
  name: "Pho Bac 97",
  description: "A staple for Vietnamese cuisine lovers in Montreal.",
  category: :restaurant,
  price_range: "$",
  address: "1016 St Laurent, Montreal, Quebec H2Z 1J3 Canada",
  longitude: -73.55969,
  latitude: 45.507954,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/02/7d/d1/5d/filename-sam-5301-jpg.jpg",
  start_time: random_time_range[0],
  end_time: random_time_range[1]
)

Recommendation.create!(
  name: "Green Spot Restaurant",
  description: "Classic diner with a variety of comfort food options.",
  category: :restaurant,
  price_range: "$",
  address: "3041 Rue Notre-Dame O, Montreal, Quebec H4C 1N9 Canada",
  longitude: -73.57887,
  latitude: 45.480865,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/05/22/59/2a/photo-of-greenspot-restaurant.jpg",
  start_time: random_time_range[0],
  end_time: random_time_range[1]
)

Recommendation.create!(
  name: "Jardin Nelson",
  description: "In the heart of Old Montreal, offering a warm summer atmosphere.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "407, Place Jacques-Cartier Vieux-Montreal, Montreal, Quebec H2Y 3B1 Canada",
  longitude: -73.55269,
  latitude: 45.50792,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/02/39/3b/5b/welcome-at-jardin-nelson.jpg",
  start_time: random_time_range[0],
  end_time: random_time_range[1]
)

Recommendation.create!(
  name: "L'amere a boire",
  description: "Local microbrewery with a variety of unique brews.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "2049 Rue Saint-Denis, Montreal, Quebec H2X 3K8 Canada",
  longitude: -73.56609,
  latitude: 45.516388,
  kid_friendly: false,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/09/0e/d4/be/l-amere-a-boire.jpg",
  start_time: random_time_range[0],
  end_time: random_time_range[1]
)

Recommendation.create!(
  name: "Vieux-Port Steakhouse",
  description: "Top dining experience with AAA Canadian Certified beef.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "39 Rue Saint Paul East, Montreal, Quebec H2Y 1G2 Canada",
  longitude: -73.55349,
  latitude: 45.50613,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/06/4f/dd/05/vieux-port-steakhouse.jpg",
  start_time: random_time_range[0],
  end_time: random_time_range[1]
)

90.times do
  start_time, end_time = random_time_range
  Recommendation.create!(
    name: Faker::Restaurant.name,
    description: Faker::Lorem.paragraph,
    category: ["restaurant", "street_food", "cafe", "attraction"].sample,
    price_range: ["$", "$$", "$$$", "$$$$"].sample,
    location: Faker::Address.community,
    address: Faker::Address.full_address,
    longitude: Faker::Address.longitude,
    latitude: Faker::Address.latitude,
    kid_friendly: random_boolean,
    dog_friendly: random_boolean,
    outdoor: random_boolean,
    image_url: "https://picsum.photos/200",
    start_time: start_time,
    end_time: end_time
  )
end

puts "Done!"
