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
  image_url: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/c9/53/cd/view-from-inside.jpg?w=1100&h=-1&s=1",
  start_time: '2024-06-13 11:30:00',
  end_time: '2024-06-13 15:00:00'
)

Recommendation.create!(
  name: "Boustan",
  description: "Boustan is a Montreal-based restaurant known for its Middle-Eastern cuisine. Established in 1986, Boustan has been voted Best Middle-Eastern Restaurant in the Montreal Mirror in 2004, 2006, 2007, 2008, 2009, 2010, 2011 and 2012. Best Middle-Eastern and Late-Night Eats in the CultMTL Best of Montreal 2013, 2014, 2015 and 2016 editions.",
  category: :restaurant,
  price_range: "$",
  price: 50,
  address: "2020A Crescent, Montreal, Quebec H3G 2B6 Canada",
  longitude: -73.577644,
  latitude: 45.498184,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/08/8f/0a/18/boustan.jpg",
  start_time: '11:30:00',
  end_time: '15:00:00'
)

Recommendation.create!(
  name: "Montreal Botanical Garden",
  description: "Recognized as one of the world’s finest, the Montréal Botanical Garden is a true living museum featuring plants from every part of the globe. This jewel in the city’s crown, founded in 1931, covers 75 hectares and features some 20 thematic gardens, a vast arboretum, the Frédéric Back Tree Pavilion and 3 exceptional cultural gardens: the Chinese Garden, Japanese Garden and First Nations Garden. Enjoy a colourful program of events, exhibitions and activities all year long.",
  category: "park",
  price_range: "$",
  price: 10,
  address: "200 rue Notre-Dame O, Montreal, Quebec H2Y 1Z5 Canada",
  longitude: -73.55586320495809,
  latitude:  45.561696508921194,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/ae/2d/88/etang-du-jardin-japonais.jpg?w=1400&h=-1&s=1",
  start_time: "09:00:00",
  end_time: "17:00:00",
  web_url: "https://www.espacepourlavie.ca/en/botanical-garden",
  )
  Recommendation.create!(
    name: "Chateau Ramezay Historic Site and Museum of Montreal",
    description: "Historic Site and Museum of Montreal. Visit Montreal’s portal to its past, the first building in Quebec to be classified an historic monument! Chosen as one of the 1001 Historic Sites You Must See Before You Die, the Château Ramezay invites you to relive, with its rich collections and multiple exhibitions, over 500 years of history, from pre-contact to the 20th century. In addition to the multimedia displays’ historical figures, costumed animators and guides will transport you through time. From the sumptuous Salle de Nantes, to the vaults where splendors and misery of New France come to life, and with the beautiful Governor’s Garden as a bonus – this is a not-to-be-missed landmark in the heart of Old Montreal!",
    category: "park",
    price_range: "$",
    price: 10,
    address: "200 rue Notre-Dame O, Montreal, Quebec H2Y 1Z5 Canada",
    longitude: -73.55483899346075,
    latitude: 45.51278140190878,
    kid_friendly: true,
    dog_friendly: false,
    outdoor: true,
    image_url: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/e0/7a/b2/le-chateau-ramesay-un.jpg?w=1400&h=-1&s=1",
    start_time: "09:00:00",
    end_time: "17:00:00",
    web_url: "https://www.espacepourlavie.ca/en/botanical-garden",
    )

  Recommendation.create!(
    name: " Bike Tour: Downtown, Old Montreal, Waterfront",
    description: "Follow Montreal bike paths on a guided bike tour of Mont-Royal Park, Old Montreal, and the Saint Lawrence River, exploring local history and some of the city’s most important sites along the way. With a relaxed pace and plenty of breaks, this Montreal bike tour is a great introduction to the city's vibrant cycling culture, and it includes a bike, helmet, and water bottle.",
    category: "biking",
    price_range: "$",
    price: 86,
    address: "1455, Peel street 3rd Floor, Montreal, Quebec H3A 1T5 Canada",
  longitude: -73.55292486749346,
  latitude: 45.50774092165434,
    kid_friendly: false,
    dog_friendly: false,
    outdoor: true,
    image_url: "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/09/34/5d/63.jpg",
    start_time: "10:00:00",
    end_time: "15:00:00",
    web_url: "https://www.tripadvisor.ca/AttractionProductReview-g155032-d12027499-Montreal_Highlights_Bike_Tour_Downtown_Old_Montreal_Waterfront-Montreal_Quebec.html"
    )
    Recommendation.create!(
      name: " 3 Hour Montreal City Bike Tour with Wine or Beer",
      description: "Explore Montreal by bike to discover the city’s colorful neighborhoods, historic buildings, and cuisine. You’ll get a great introduction to Montreal bike paths and bike lanes, too; since your bike rental is good for the whole day, you can keep sightseeing on your own after the tour concludes. Choose between a 9-mile (14-km.) City Tour or the 12-mile (20-km.) Architecture Tour to see the city with a local guide.
    ",
      category: "biking",
      price_range: "$",
      price: 86,
      address: "1455, Peel street 3rd Floor, Montreal, Quebec H3A 1T5 Canada",
      longitude: -73.55361088701993,
      latitude: 45.50828780903704,
      kid_friendly: false,
      dog_friendly: false,
      outdoor: true,
      image_url: "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/06/6e/e2/ef.jpg",
      start_time: "10:00:00",
      end_time: "15:00:00",
      web_url:"https://www.tripadvisor.ca/AttractionProductReview-g155032-d11451195-3_Hour_Montreal_City_Bike_Tour_with_Wine_or_Beer_AM_PM-Montreal_Quebec.html"
      )




puts "Recommendations created successfully!"

# Print final counts for verification
puts "Final counts:"
puts "Recommendations: #{Recommendation.count}"
puts "Users: #{User.count}"

puts "Seeding completed successfully."
