puts "Deleting previous data..."
Recommendation.destroy_all
User.destroy_all
puts "Done!"

puts "Creating Users..."
User.create!(email: "rami@gmail.com", password: "123456")
User.create!(email: "justin@gmail.com", password: "123456")
User.create!(email: "victory@gmail.com", password: "123456")

puts "Done!"

puts "Creating restaurants..."
Recommendation.create!(
  name: "McDonalds",
  description: Faker::Restaurant.description,
  category: "restaurant",
  price_range: "$",
  address: "4490 Saint Denis St, MOntreal, Quebec H2J 2L1",
  longitude: -73.58294,
  latitude: 45.52398,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://lh5.googleusercontent.com/p/AF1QipNx7PrGsRQJp53F-i8gDZI5Frv0RNJHGv_m2omn=w408-h544-k-no"
)
Recommendation.create!(
  name: "Siboire Saint Laurent",
  description: Faker::Restaurant.description,
  category: "restaurant",
  price_range: "$$",
  address: "5101 St Laurent Blvd, Montreal, Quebec H2T 1R9",
  longitude: -73.59272360883024,
  latitude: 45.523409835418825,
  kid_friendly: false,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://lh5.googleusercontent.com/p/AF1QipPymIulz9Ss3Q_fKoswh_bPhBLm6wi2MYBiIIIU=w408-h272-k-no"
)
Recommendation.create!(
  name: "Baluchon",
  description: Faker::Restaurant.description,
  category: "street_food",
  price_range: "$$",
  location: "Parc LaFond",
  address: "3520 Boulevard St Joseph Est, Montréal",
  longitude: -73.56588157326982,
  latitude: 45.55196992283808,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://lotmom.imgix.net/mJcLyqBeRmwFh6nUe4Xk_03FT_Foodtruck.jpg?crop=faces&fit=crop&h=190&w=320",
  start_time: DateTime.parse("#{Date.today} 11:00:00-04:00"),
  end_time: DateTime.parse("#{Date.today} 19:00:00-04:00")
)
Recommendation.create!(
  name: "Mignon",
  description: Faker::Restaurant.description,
  category: "street_food",
  price_range: "$",
  location: "Square Victoria",
  address: "747 Rue du Square-Victoria, Montréal, QC H2Y 3Y9",
  longitude: -73.56053482616099,
  latitude: 45.502180185696574,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://lotmom.imgix.net/vD6Cff0URSKDlsH7gbU6_29511608_10156279008646477_6615424880626106368_o.jpg?crop=faces&fit=crop&h=400&w=1000",
  start_time: DateTime.parse("#{Date.today} 10:00:00-04:00"),
  end_time: DateTime.parse("#{Date.today} 21:00:00-04:00")
)
puts "Done!"

puts "Creating events..."

Recommendation.create!(
  name: "Inclusion 2.0 : S'élever avec l'IA propulsé par FORTES et NAF",
  description: "NAF et FORTES présentent une soirée d'inspiration sur le sujet de l'heure: l'intelligence artificielle",
  category: "event",
  price: 50,
  location: "Pub Victoria",
  address: "704 Notre-Dame St W, Montreal, QC H3C 1J2",
  longitude: 45.5015012,
  latitude: -73.5598134,
  kid_friendly: false,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://oxfordabstracts.com/static/91b46574642d3fb252eb5d37e6aa6609/cd1bd/aiimageheader.webp",
  start_time: DateTime.parse("2024-06-15T10:30:00Z"),
  end_time: DateTime.parse("2024-06-15T05:30:00Z")
)
Recommendation.create!(
  name: "Jardin électro-tulipes",
  description: "Créez un électro jardin! À l'aide de divers matériaux électriques, les participants pourront créer un jardin plein de couleurs et de lumière.

Pour les 7 à 12 ans

Cet atelier se déroule en français et en anglais.",
  category: "event",
  price: 0,
  location: "Roxboro Public Library",
  address: "110, rue Cartier, Montréal (Québec) H8Y 1G8",
  longitude: 45.5026237695732,
  latitude: -73.81456929701311,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://res.cloudinary.com/villemontreal/image/upload/w_1170,c_fill/f_auto,dpr_auto,q_auto/v1/portail/tylalwnpctovdtzlc0ai.jpg",
  start_time: DateTime.parse("2024-06-25 10:30:00-04:00"),
  end_time: DateTime.parse("2024-06-25 11:30:00-04:00")
)
puts "Done ! "
puts "All done!"
