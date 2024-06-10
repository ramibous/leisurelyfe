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
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "200 rue Notre-Dame O, Montreal, Quebec H2Y 1Z5 Canada",
  longitude: -73.55742,
  latitude: 45.50371,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0e/d9/3c/1b/20170401-160920-largejpg.jpg"
)

Recommendation.create!(
  name: "Modavie",
  description: "Seven nights a week, local bands take the stage at Montreal's hottest Jazz bar and bistro. Modavie's spirited setting sets the scene for a night of great tunes, top dining and generous pastis toasting. The bistro's far-reaching wine menu hits just the right notes and helps round off succulent lamb, fish, beef and inspired pasta dishes.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1 Saint Paul St W, Montreal, Quebec H2Y 1Y6 Canada",
  longitude: -73.5539,
  latitude: 45.505527,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/14/05/ea/55/restaurant.jpg"
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
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/07/27/5f/e4/mcgill-university.jpg"
)

Recommendation.create!(
  name: "La Boulette",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "2223 Rue Beaubien E, Montreal, Quebec H2G 1M8 Canada",
  longitude: -73.5937,
  latitude: 45.546574,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/14/36/55/img-20170408-192159-516.jpg"
)

Recommendation.create!(
  name: "Omnivore",
  description: "None",
  category: :restaurant,
  price_range: "$",
  address: "4351 Saint-Laurent Blvd, Montreal, Quebec H2W 1Z8 Canada",
  longitude: -73.583755,
  latitude: 45.518837,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/23/87/3c/39/omnivore-herbivore-carnivore.jpg"
)

Recommendation.create!(
  name: "Drogheria Fine",
  description: "None",
  category: :restaurant,
  price_range: "$",
  address: "68 Avenue Fairmount O, Montreal, Quebec H2T 2M2 Canada",
  longitude: -73.59523,
  latitude: 45.52303,
  kid_friendly: false,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/61/73/ba/photo1jpg.jpg"
)

Recommendation.create!(
  name: "Pho Bac 97",
  description: "None",
  category: :restaurant,
  price_range: "$",
  address: "1016 St Laurent, Montreal, Quebec H2Z 1J3 Canada",
  longitude: -73.55969,
  latitude: 45.507954,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/02/7d/d1/5d/filename-sam-5301-jpg.jpg"
)

Recommendation.create!(
  name: "Green Spot Restaurant",
  description: "None",
  category: :restaurant,
  price_range: "$",
  address: "3041 Rue Notre-Dame O, Montreal, Quebec H4C 1N9 Canada",
  longitude: -73.57887,
  latitude: 45.480865,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/05/22/59/2a/photo-of-greenspot-restaurant.jpg"
)

Recommendation.create!(
  name: "Jardin Nelson",
  description: "In the heart of the historic district of Old Montreal, Jardin Nelson provides a moment of relaxation in a real oasis with a warm summer atmosphere. Come and taste good dishes, sangrias and refreshing cocktails. Choose between the front terrace in the heart of Place Jacques-Cartier to observe the work of artists and jugglers, or our fabulously decorated interior courtyard with live music. Jardin Nelson offers everything you need to spend an unforgettable moment.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "407, Place Jacques-Cartier Vieux-Montreal, Montreal, Quebec H2Y 3B1 Canada",
  longitude: -73.55269,
  latitude: 45.50792,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/02/39/3b/5b/welcome-at-jardin-nelson.jpg"
)

Recommendation.create!(
  name: "L'amere a boire",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "2049 Rue Saint-Denis, Montreal, Quebec H2X 3K8 Canada",
  longitude: -73.56609,
  latitude: 45.516388,
  kid_friendly: false,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/09/0e/d4/be/l-amere-a-boire.jpg"
)

Recommendation.create!(
  name: "Vieux-Port Steakhouse",
  description: "More than a restaurant, we're an institution. Quality cuts, cooked to perfection for over three decades. All our beef is AAA Canadian Certified and aged for at least 30 days. You'll love the classic atmosphere, warm and welcoming. We're situated directly on St. Paul Street in a beautiful, century-old structure. Inside, you're greeted by old stone walls, wood floors, cozy fireplaces and an attentive staff. With multiple dining rooms and one of the nicest terraces in Old Montreal, we're the ideal venue for groups, weddings and other social gatherings. It'smagnificent garden courtyard has picturesque stone walls that surrounding it and beautiful greenery that make it an unparalleled place to enjoy the summer weather in complete privacy. Its new decor includes an outdoor bar, ideal for a drink. The terrace also offers you the opportunity to have lunch, dine and new this year, brunch à la carte, all with the same quality standards as the Old Port Steakhouse.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "39 Rue Saint Paul East, Montreal, Quebec H2Y 1G2 Canada",
  longitude: -73.55349,
  latitude: 45.50613,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/06/4f/dd/05/vieux-port-steakhouse.jpg"
)

Recommendation.create!(
  name: "Wolf&Workman",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "139 St-Paul Ouest, Montreal, Quebec H2Y 1Z5 Canada",
  longitude: -73.55463,
  latitude: 45.50399,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-w/17/6a/0d/59/photo0jpg.jpg"
)

Recommendation.create!(
  name: "EMERAUDE DE BANGKOK",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "413 Bourke Ave, Dorval, Quebec H9S 3W8 Canada",
  longitude: -73.72164,
  latitude: 45.44503,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0a/54/53/6e/photo0jpg.jpg"
)

Recommendation.create!(
  name: "Chez Boss & Fils",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "3610 Rue Wellington, Montreal, Quebec H4G 1T6 Canada",
  longitude: -73.566376,
  latitude: 45.46772,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0b/91/d6/22/photo0jpg.jpg"
)

Recommendation.create!(
  name: "Romados",
  description: "World Famous Portuguese charcoal Chicken and Natas made daily. Pick up, eat in and delivery available.",
  category: :restaurant,
  price_range: "$",
  address: "115 Rachel E, Montreal, Quebec H2W 1C8 Canada",
  longitude: -73.580536,
  latitude: 45.519314,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-w/17/26/b1/26/romados.jpg"
)

Recommendation.create!(
  name: "Tapeo",
  description: "Restaurant espagnol situe dans le quartier Villeray a Montreal. Notre chef Marie-Fleur St-Pierre est reputee pour ses tapas raffines et inventifs.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "511 Villeray, Montreal, Quebec H2R 1H5 Canada",
  longitude: -73.62256,
  latitude: 45.541557,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/06/7b/b4/da/tapeo.jpg"
)

Recommendation.create!(
  name: "Barbie Expo",
  description: "This property is Temporarily Closed This is not Barbie as you once knew her! The Barbie Expo, conveniently located in the heart of downtown, in Les Cours Mont Royal, Montreal’s most prestigious upscale shopping mall, is a brilliant and exciting way to showcase the haute couture fashion available at the exclusive flagship boutiques within the mall. The stunning display houses over 1000 dolls, and is the largest permanent Barbie doll Expo in the world! A truly incredible selection of world-renowned designers have magnificently fashioned breathtaking outfits for every possible occasion—all of them modeled by the 11.5 inch fashion icon herself. Admission is free. Designers on display include Christian Dior, Donna Karan, Armani, Ralph Laurent, Vera Wang, Bill Blass, Oscar de la Renta, Christian Louboutin, Zac Posen, Carolina Herrera, Bob Mackie, and many other authentic fashion all-stars!",
  category: :attraction,
  price_range: "$$",
  address: "1455, Peel street 3rd Floor, Montreal, Quebec H3A 1T5 Canada",
  longitude: -73.57391,
  latitude: 45.501305,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/52/a3/98/barbie-expo.jpg"
)

Recommendation.create!(
  name: "St-Viateur Bagel & Cafe",
  description: "None",
  category: :restaurant,
  price_range: "$",
  address: "1127 du Mont-Royal Avenue East, Montreal, Quebec H2J 1X9 Canada",
  longitude: -73.5789,
  latitude: 45.528343,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/8e/2f/4e/photo0jpg.jpg"
)

Recommendation.create!(
  name: "Cafe Parvis",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "433 Rue Mayor, Montreal, Quebec H3A 1N9 Canada",
  longitude: -73.56858,
  latitude: 45.50555,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/05/cd/b5/84/cote-bistro.jpg"
)

Recommendation.create!(
  name: "Cathedral of Marie-Reine-du-Monde",
  description: "This Catholic church dedicated to Mary, Queen of the World, was modeled after Rome's St. Peter's Church.",
  category: :attraction,
  price_range: "$$",
  address: "1085 de la Cathedrale (René-Lévesque W. and Mansfield), Montreal, Quebec H3B 2V3 Canada",
  longitude: -73.56856,
  latitude: 45.49933,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/14/44/04/20/caption.jpg"
)

Recommendation.create!(
  name: "Impasto",
  description: "None",
  category: :restaurant,
  price_range: "$$$$",
  address: "48 Rue Dante, Montreal, Quebec H2S 1J5 Canada",
  longitude: -73.61319,
  latitude: 45.533108,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0b/9a/41/42/impasto.jpg"
)

Recommendation.create!(
  name: "Le Petit Alep",
  description: "Located just opposite the Jean-Talon Market, the Petit Alep restaurant was opened in 1995. With a menu of Middle Eastern flavors based on the great classics of traditional Syrian and Armenian cuisine, this family restaurant will certainly take your taste buds on a journey. Several tasting menu options adapted to different dietary restrictions (vegetarian, vegan, allergies, etc.) can be offered to you on site by our team. For lovers of natural wines, the menu offers a generous selection of privately imported specialties.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "191 Rue Jean Talon E, Montreal, Quebec H2R 1S8 Canada",
  longitude: -73.61641,
  latitude: 45.536453,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/10/3c/ef/f3/le-petit-alep.jpg"
)

Recommendation.create!(
  name: "Accords bistro",
  description: "None",
  category: :restaurant,
  price_range: "$$$$",
  address: "22 Sainte-Catherine Street East, Montreal, Quebec H2X 1K4 Canada",
  longitude: -73.56348,
  latitude: 45.510223,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/07/63/bc/6e/accords.jpg"
)

Recommendation.create!(
  name: "Gousto Bistro",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "360 Rue St-jean, Longueuil, Quebec J4H 2X6 Canada",
  longitude: -73.50803,
  latitude: 45.53563,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0d/45/15/9a/gousto-bistro.jpg"
)

Recommendation.create!(
  name: "Bistro Garage Cafe",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "275 Rue Hickson Verdun, Montreal, Quebec H4G 1S5 Canada",
  longitude: -73.56744,
  latitude: 45.46495,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/03/80/67/d7/saucisses-grilllees-du.jpg"
)

Recommendation.create!(
  name: "Porto Mar",
  description: "Located in a beautiful historic building in Old Montreal, Porto Mar is an ideal spot for business meetings, casual encounters and special events. The menu offers a variety of traditional Portuguese dishes including fresh fish, seafood and a choice of grilled specialties. Extensive wine list including many imported wines at affordable prices.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "201 Place d'Youville, Montreal, Quebec H2Y 2B3 Canada",
  longitude: -73.55489,
  latitude: 45.502514,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/14/d6/1b/e8/main-front-entrance.jpg"
)

Recommendation.create!(
  name: "Il Pagliaccio",
  description: "Telephone: 514 276 6999",
  category: :restaurant,
  price_range: "$$$$",
  address: "365 avenue Laurier Ouest, Montreal, Quebec H2V 2K5 Canada",
  longitude: -73.59623,
  latitude: 45.519302,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/01/d5/d2/3a/grilled-shrimp-was-excellent.jpg"
)

Recommendation.create!(
  name: "Restaurant Candide",
  description: "Le restaurant Candide welcomes you to their dining room. They are open at night from Wednesday to Sunday. You can pay by MasterCard, Visa, gift certificates and Interac.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "551 Rue St. Martin, Montreal, Quebec H3J 2L6 Canada",
  longitude: -73.56927,
  latitude: 45.48901,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0a/b8/dc/97/candide.jpg"
)

Recommendation.create!(
  name: "Mano Cornuto",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "988 Ottawa, Montreal, Quebec H3C 1S3 Canada",
  longitude: -73.55825,
  latitude: 45.49525,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/1b/1b/db/b1/photo0jpg.jpg"
)

Recommendation.create!(
  name: "Notre Boeuf de Grace",
  description: "Fresh beef ground daily on site",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "5732 Rue Sherbrooke O, Montreal, Quebec H4A 1W8 Canada",
  longitude: -73.61606,
  latitude: 45.470432,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/f8/4e/39/l-orozco.jpg"
)

Recommendation.create!(
  name: "Moghel Tandoori",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "538 Avenue Victoria, Saint-Lambert, Quebec J4P 2J5 Canada",
  longitude: -73.51053,
  latitude: 45.50129,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/07/94/5d/64/moghel-tandoori.jpg"
)

Recommendation.create!(
  name: "Rotisseries Benny",
  description: "None",
  category: :restaurant,
  price_range: "$",
  address: "1360 Boul Sainte-Foy, Longueuil, Quebec J4K 1X9 Canada",
  longitude: -73.49964,
  latitude: 45.51332,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-w/29/9c/87/f4/caption.jpg"
)

Recommendation.create!(
  name: "Wilensky's Light Lunch",
  description: "None",
  category: :restaurant,
  price_range: "$",
  address: "34 Av Fairmount O, Montreal, Quebec H2T 2M1 Canada",
  longitude: -73.59499,
  latitude: 45.52329,
  kid_friendly: false,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/08/4d/a4/24/wilensky-s-light-lunch.jpg"
)

Recommendation.create!(
  name: "Notre-Dame-de-Bon-Secours Chapel",
  description: "Called the Sailors' Church because of the wooden ship models that hang from its ceiling, this church was originally designed by Marguerite Bougeoys, one of Montreal's first teachers. Next to the Chapel, the Marguerite Bourgeoys Museum ($) presents fascinating stories/accounts aænd significant objects to showcase the life and work of Margueærite Bourgeoys, Montreal's first teacher. Visitors can explore the 18th-century stone crypt and climb the tower to admire a stunning view of the St. Lawrence, Old Montreal and downtown. The archaeological site, opened in 1998, has witnessed more than 2,400 years of history. In addition to its new permanent exhibition opened in 2020, the Museum offers a variety of temporary exhibitions and cultural activities, along with school programs. A seasonal music festival is held every December, featuring free concerts with vocal ensembles.",
  category: :attraction,
  price_range: "$$",
  address: "400 St-Paul St. E. Metro Champ-de-Mars, Montreal, Quebec H2Y 1H4 Canada",
  longitude: -73.55124,
  latitude: 45.50979,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0e/12/0c/17/premiere-chapelle-de.jpg"
)

Recommendation.create!(
  name: "Provisions 1268",
  description: "Open concept restaurant serving only 5 course tasting menus. Each week we introduce an entirely new menu using locally grown, fresh and seasonal ingredients. We work with local producers who practice responsible and sustainable agriculture. Our wine list also reflects the same commitment to quality and sustainability. Our dining room seats a maximum of 28 people predominantly around a long counter that runs the entire length of the restaurant. We also have 2 high tables of two, and one large harvest table for 6-8 people. We started Provisions Restaurant because we wanted to do fine dining in a relaxed atmosphere. We wanted to cook for our customers the way our friends in the industry cook for us whenever we go to their restaurants - we never look at menus - we just let them feed us. Our philosophy and concept may not be for everybody, and that's OK. We put a lot of people out of their comfort zones - we have no menu, so no choices, we only offer bar seating with laboratory stools and when you order you have no idea what you are going to eat. We are however definitely for those people who love to eat at the bar, interact with other guests, and watch what's going on in the kitchen.",
  category: :restaurant,
  price_range: "$$$$",
  address: "1268 Van Horne Avenue, Montreal, Quebec H2V 1K6 Canada",
  longitude: -73.61388,
  latitude: 45.521656,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0c/30/09/0c/20160217-lesprovisions.jpg"
)

Recommendation.create!(
  name: "Old Montreal",
  description: "Old Montreal is a historic neighborhood in Canada with a charming Parisian flair. Be transported back in time as you wander down the cobblestone streets and admire the stunning architecture. Check out the Bonsecours Market for some unique shopping, stroll along St. Paul Street, and visit the Notre-Dame Basilica of Montreal to admire the incredible stained glass windows. You can also head to the old port for a Ferris wheel ride, zipline, or cruise. Take a walking tour to learn more about its history or a ghost tour to explore the neighborhood after dark. Visit in the winter to see the beautiful holiday decorations. – Tripadvisor",
  category: :attraction,
  price_range: "$$",
  address: "Montreal, Quebec H2Y 3Y8 Canada",
  longitude: -73.55596,
  latitude: 45.50401,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/00/10/11/d7/hotel-de-ville-city-hall.jpg"
)

Recommendation.create!(
  name: "Le NilBleu",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "3706 St Denis, Montreal, Quebec H2X 3L7 Canada",
  longitude: -73.57115,
  latitude: 45.51853,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/29/7d/fb/8a/faithful-since-1993.jpg"
)

Recommendation.create!(
  name: "Ouzeri",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "4690 St-Denis, Montreal, Quebec H2J 2L3 Canada",
  longitude: -73.585495,
  latitude: 45.525135,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/07/cd/39/47/photo0jpg.jpg"
)

Recommendation.create!(
  name: "Maison Publique",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "4720 Marquette, Montreal, Quebec H2J 3Y6 Canada",
  longitude: -73.578735,
  latitude: 45.533722,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/08/ea/57/c8/photo3jpg.jpg"
)

Recommendation.create!(
  name: "Yokato Yokabai",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "4185 rue Drolet, Montreal, Quebec H2W 2L5 Canada",
  longitude: -73.57859,
  latitude: 45.52136,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0e/9e/00/5d/photo0jpg.jpg"
)

Recommendation.create!(
  name: "Bivouac",
  description: "A Social Lounge, Craft Bar and Modern Bistro form the theatrical setting for a virtual urban-boreal culinary adventure in Downtown Montreal. Bivouac provides a new world to explore the tastes and sensations of the Quebecois terroir, as told through the voice of its artisans, its actors, and curators. Our purpose is to enable our guests to seek, explore, share, and enjoy the quintessence of our nature in all its facets: human, animal, botanical and mineral. Bivouac is freedom, discovery, and authenticity. New this winter ! Les Refuges du Bivouac invites you to set up camp for an evening under a magnificently decorated dome in the heart of the vibrant entertainment district. With family, friends or for corporate dinners, the domes can accommodate up to 10 people.",
  category: :restaurant,
  price_range: "$$$$",
  address: "1255 Rue Jeanne-Mance, Montreal, Quebec H5B 1E5 Canada",
  longitude: -73.56544,
  latitude: 45.50732,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/1d/2f/db/af/terrace.jpg"
)

Recommendation.create!(
  name: "Brit & Chips",
  description: "None",
  category: :restaurant,
  price_range: "$",
  address: "433 McGill Street, Montreal, Quebec H2Y 2H1 Canada",
  longitude: -73.55819,
  latitude: 45.500507,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/14/7c/cf/d1/popcorn-shrimps.jpg"
)

Recommendation.create!(
  name: "La Panthere Verte",
  description: "The Green Panther is a fresh, dynamic project whose main goal is to develop a more sustainable way of living in today's urban reality. We support and create local alternatives, through the use of organic produce (local when available), recycled materials and by raising awareness.",
  category: :restaurant,
  price_range: "$",
  address: "2153 Mackay Street, Montreal, Quebec H3G 2J2 Canada",
  longitude: -73.58021,
  latitude: 45.49727,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/07/18/eb/34/la-panthere-verte.jpg"
)

Recommendation.create!(
  name: "Tamashi Restaurant",
  description: "Since 2007, Restaurant Tamashi is offering a fresh Asian-Fusion cuisine and a distinguished customer service with an outstanding exotic atmosphere. We offer more that 300 places and we have special modern Tatamis that is perfect for groups. And don’t forget, at Restaurant Tamashi, for lunch or dinner, with friends or family, you always bring your own wine!",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1595 boulevard des Laurentides, Laval, Quebec H7N 4Y6 Canada",
  longitude: -73.70417,
  latitude: 45.581112,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/13/d1/49/47/tamashi-restaurant.jpg"
)

Recommendation.create!(
  name: "Les Deux Gamins",
  description: "At the Bistro Les Deux Gamins, you can discover classic French cuisine, prepared by an innovative young chef with the best ingredients of the market, according to the seasons. Including our terrace, our restaurant has four different spaces, each accommodating around 30 people. We are therefore willing to receive comfortably groups of a hundred people. French Onion Soup, Duck Confit, Braised Lamb Shank, Rib Beef Steak, Creme Brulee, Fresh Bread, Beef Tartare, Salmon Tartare, Vegeterian Options, Wide selection of wine and alcohols, etc...",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "170 Prince-Arthur East Hotel de Ville, Plateau Mont-Royal, Montreal, Quebec H2X 1B7 Canada",
  longitude: -73.57113,
  latitude: 45.515617,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/02/98/9b/18/filename-sourisd-agneau.jpg"
)

Recommendation.create!(
  name: "Montreal Botanical Garden",
  description: "Recognized as one of the world’s finest, the Montréal Botanical Garden is a true living museum featuring plants from every part of the globe. This jewel in the city’s crown, founded in 1931, covers 75 hectares and features some 20 thematic gardens, a vast arboretum, the Frédéric Back Tree Pavilion and 3 exceptional cultural gardens: the Chinese Garden, Japanese Garden and First Nations Garden. Enjoy a colourful program of events, exhibitions and activities all year long.",
  category: :attraction,
  price_range: "$$",
  address: "4101 Sherbrooke St. E, Montreal, Quebec H1X 2B2 Canada",
  longitude: -73.55637,
  latitude: 45.55677,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/25/14/9a/e1/entree-principale-du.jpg"
)

Recommendation.create!(
  name: "Pamika Thai",
  description: "Pamika is named after our restaurant’s passionate head chef and owner. Originally from the region of Isan in Thailand, she traveled the globe to see the project flourish and guarantee the authenticity of the dishes. All plates are designed to respect Thai traditions and taste to bring you the best Thai experience in the heart of Montreal.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "4902 Blvd. Saint-Laurent, Montreal, Quebec H2T 1R5 Canada",
  longitude: -73.591125,
  latitude: 45.522163,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/24/8b/eb/9e/the-pamika-restaurant.jpg"
)

Recommendation.create!(
  name: "Vallier Bistro",
  description: "*UPDATE! Vallier now offers brunch on weekends!* Since April 2016, Vallier has a new look and includes a new concept : contemporary Montreal bistro. Vallier still offers its classics like the mac n' cheese and sheperd's pie, but has other new dishes. You'll see a lot of Quebec ingredients in our meals and cocktails, but also premium local beers on tap. All this without becoming too fancy. Vallier wants you to feel like you're sitting at your grandmother's table! Join us for brunch (on the weekends), lunch or dinner. We welcome reservations.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "425 Mcgill, Montreal, Quebec H2Y 2H1 Canada",
  longitude: -73.55806,
  latitude: 45.50047,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/02/fa/87/f8/vallier-restaurant-licencie.jpg"
)

Recommendation.create!(
  name: "Restaurant Alep",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "199, Rue Jean Talon Est, Montreal, Quebec H2R 1S8 Canada",
  longitude: -73.61604,
  latitude: 45.53654,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/11/5d/fb/0e/photo0jpg.jpg"
)

Recommendation.create!(
  name: "Natalino Restaurant",
  description: "Allow us the honour to enchant you and your guests with a warm welcome, fresh authentic Italian cuisine, and excellent service, making your visit an unforgettable and pleasant success. Since 1986 Natalino Restaurant has been serving up the finest and most authentic Italian cuisine in the west island.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "365 Bord du Lac, Dorval, Quebec H9S 2A5 Canada",
  longitude: -73.729164,
  latitude: 45.440964,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/03/f5/81/1e/ajouter-une-legende.jpg"
)

Recommendation.create!(
  name: "Stella Pizzeria",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1327 Avenue Laurier E, Montreal, Quebec H2J 1H4 Canada",
  longitude: -73.58402,
  latitude: 45.533318,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0d/bb/0b/d0/photo0jpg.jpg"
)

Recommendation.create!(
  name: "Cafe Le Petit Flore",
  description: "À Paris, il y a la Mecque de la vie littéraire et artistique nommée Café de Flore. Autrefois ce café était le rendez-vous attitré des existentialistes dont Jean-Paul Sartre faisait partie. Encore aujourd'hui, il y règne toujours une atmosphère de détente et de liberté. Nous n'avions pas la prétention de recréer Le Flore en ce lieu, c'est pourquoi nous avons créé Le Petit Flore. Comme à Paris, nous faisons tout pour vous placer dans une ambiance décontractée et vous offrir toute la qualité que vous recherchez.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1145 Fleury Est, Montreal, Quebec H2C 1P9 Canada",
  longitude: -73.65889,
  latitude: 45.558548,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/27/62/ab/saumon.jpg"
)

Recommendation.create!(
  name: "Restaurant Meridional",
  description: "Restaurant Meridional is fine dining mediterranean restaurant. Inspired by the Costa del Sol, in Spain and the Cote d'Azur in France, our restaurant specializes in French and Spanish cuisine. The calm, relaxing, ambience is perfect for romantic couples wishing to be intimate or big groups who party till the late hours with no worries. Come and find out why this gem is favourite place for most our customers and what keeps them coming back for more.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1155 Boulevard Rome, Brossard, Quebec J4W 3J1 Canada",
  longitude: -73.4914,
  latitude: 45.456104,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/18/81/19/ee/our-famous-couscous-royale.jpg"
)

Recommendation.create!(
  name: "Time Out Market Montreal",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "705 Saint-Catherine St W Le Centre Eaton de Montréal, Montreal, Quebec H3B 4G5 Canada",
  longitude: -73.57061,
  latitude: 45.503674,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/24/d3/51/44/caption.jpg"
)

Recommendation.create!(
  name: "Nudo",
  description: "None",
  category: :restaurant,
  price_range: "$",
  address: "1055 Saint-Laurent Boulevard, Montreal, Quebec H2Z 1J6 Canada",
  longitude: -73.56029,
  latitude: 45.508305,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0a/45/08/90/img-20160208-135813-largejpg.jpg"
)

Recommendation.create!(
  name: "Nyk's Bistro Pub",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1250 Rue de Bleury, Montreal, Quebec H3B 2W4 Canada",
  longitude: -73.566475,
  latitude: 45.506313,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/10/7a/a9/ce/photo1jpg.jpg"
)

Recommendation.create!(
  name: "Sushi Yasu",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1200 Boul. Rome Local W Brossard, Brossard, Quebec J4W 3H3 Canada",
  longitude: -73.48999,
  latitude: 45.457546,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/03/83/f6/db/fried-calamari.jpg"
)

Recommendation.create!(
  name: "Jerome Ferrer - Europea",
  description: "Let yourself be inspired by a unique and fun environment. Nice service, nice food, nice place, nice dessert, nice bread, nice atmosphere.",
  category: :restaurant,
  price_range: "$$$$",
  address: "1065 Rue de la Montagne, Montreal, Quebec H3G 0B9 Canada",
  longitude: -73.57181,
  latitude: 45.49639,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/1b/87/37/ec/venez-vivre-l-experience.jpg"
)

Recommendation.create!(
  name: "Le Saloon Bistro Bar",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1333 Rue Ste-Catherine Est, Montreal, Quebec H2L 2H4 Canada",
  longitude: -73.55496,
  latitude: 45.51986,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0d/3a/52/8a/la-terrasse.jpg"
)

Recommendation.create!(
  name: "Resto La Menthe Poivree",
  description: "Nous sommes un bistro de quartier chaleureux et réconfortant. Nous proposons une cuisine d’inspiration française mettant en valeur les talents d’ici. Le tout est offert avec un service attentionné et un excellent rapport qualité-prix. Louise et Éric",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "2379 Blvd Rosemont, Montreal, Quebec H2G 1T9 Canada",
  longitude: -73.58735,
  latitude: 45.5457,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0e/dd/b2/a8/ossu-bucco-wapiti-sauce.jpg"
)

Recommendation.create!(
  name: "Duc de Lorraine",
  description: "Duc de Lorraine, open since 1952, is Montreal's oldest French pastry shop. From our critically acclaimed buttery croissants, to our traditional fine pastries, we have maintained our original recipes from our great chefs over the years. In addition to our fine pastries, we are well known for our brunch, and traditional French bistro specialities. From our restaurant windows, and in warmer months our patios the view is beautiful of St Joseph Oratory. We are open every day of the year from 6:30 AM to 10:30 PM",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "5002 Ch de la Cote des Neiges, Montreal, Quebec H3V 1G6 Canada",
  longitude: -73.61837,
  latitude: 45.49449,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/24/29/7a/96/duc-de-lorraine-montreal.jpg"
)

Recommendation.create!(
  name: "Poutineville ONTARIO",
  description: "Welcome to Poutineville! Come and create your own Poutine from a list of fantastic and fresh ingredients or choose from our chef's specialties",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1365 Ontario East, Montreal, Quebec H2L 1S2 Canada",
  longitude: -73.56116,
  latitude: 45.52317,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/03/10/59/b5/poutineville.jpg"
)

Recommendation.create!(
  name: "Chef On Call",
  description: "We delivery stepped up gourmet comfort food late night. From hand breaded chicken tenders to handcrafted beef burgers to frosty milkshakes. We got variety. Also, we take delivery very seriously, our company mission is delivery excellence. We can provide this when you order direct, not through a third party. Holler at us for good eats!",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "3430 Avenue Du Parc, Montreal, Quebec H2X 2H5 Canada",
  longitude: -73.57224,
  latitude: 45.508686,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/07/4e/45/5a/poutine.jpg"
)

Recommendation.create!(
  name: "Rue St-Paul",
  description: "The oldest and one of the prettiest of Montreal's streets is home to the Bonsecours Market and the Notre-Dame De-Bonsecours Chapel.",
  category: :attraction,
  price_range: "$$",
  address: "Rue St-Paul, Montreal, Quebec Canada",
  longitude: -73.55675,
  latitude: 45.50064,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/ee/f9/06/caption.jpg"
)

Recommendation.create!(
  name: "Resto Vego",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1720, rue Saint-Denis, Montreal, Quebec H2X 3K6 Canada",
  longitude: -73.56461,
  latitude: 45.515472,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0b/6e/31/b5/img-20160526-145559-largejpg.jpg"
)

Recommendation.create!(
  name: "Pizzedelic Boucherville",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1155 Place Nobel # A, Boucherville, Quebec J4B 7L3 Canada",
  longitude: -73.44793,
  latitude: 45.571327,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0d/b2/c7/9c/photo0jpg.jpg"
)

Recommendation.create!(
  name: "Trattoria Trestevere",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1237 rue Crescent, Montreal, Quebec H3G 2B1 Canada",
  longitude: -73.574974,
  latitude: 45.496826,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0e/02/b2/4e/photo0jpg.jpg"
)

Recommendation.create!(
  name: "Saiko Bistrot Izakaya",
  description: "The first Japanese gastro-bistro in the heart of the business district, Saikō Bistrot offers a distinctive dining experience. You will find traditional Japanese dishes from chefs Shatoshi and Shin Ichi-san. Saikō Bistrot is one of the first restaurants in Montreal that combines a sushi house and a Japanese bistro.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1065 Cote Du Beaver-hall, Montreal, Quebec H2Z 1S5 Canada",
  longitude: -73.56474,
  latitude: 45.502373,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/ec/b7/9d/photo1jpg.jpg"
)

Recommendation.create!(
  name: "Atwater Cocktail Club",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "512 Avenue Atwater, Montreal, Quebec H4C 2G5 Canada",
  longitude: -73.577995,
  latitude: 45.481213,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/12/4f/8c/f2/arrive-early-and-get.jpg"
)

Recommendation.create!(
  name: "Le roi du Smoked Meat",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "St-Hubert, Montreal, Quebec Canada",
  longitude: -73.606735,
  latitude: 45.53781,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/11/a8/97/d4/img-20180101-225434-290.jpg"
)

Recommendation.create!(
  name: "Helicoptere",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "4255 Ontario Est, Montreal, Quebec H1V 1K4 Canada",
  longitude: -73.540245,
  latitude: 45.551945,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/14/8c/97/be/pain-challah-et-beurre.jpg"
)

Recommendation.create!(
  name: "Delhi Kabab",
  description: "Fine Cuisine Indienne. Entreprise Familiale avec 25 ans d'expérience! Table d'hôte - salle a manger midi et Soir. Nouveau Restaurant a Découvrir!",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "6185 Boulevard Taschereau Local 108, Brossard, Quebec J4Z 1A6 Canada",
  longitude: -73.46613,
  latitude: 45.474705,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/08/bc/31/b3/delhi-kabab.jpg"
)

Recommendation.create!(
  name: "Cachitos",
  description: "Cachitos is a small bakery in the heart of downtown montreal that brings you a taste of Venezuela and its incomparable Cachitos!DescriptionFrequently Asked Cachitos Questions : - Where does it come from?Cachitos are a traditional Venezuelan pastry, usually considered to be a breakfast food although many enjoy them throughout the day.-What are the traditional fillings?The traditional filling for the Cachito is ham, but in modern Venezuela it is common to find cheese Cachitos as well. We at Cachito Bakery, created a much wider assortment of flavours, so everyone is sure to find a personal favourite. -What does Cachitos mean?Cachitos comes from the Spanish word “Cacho” meaning “Horn”. The “-ito” at the ends marks it as a diminutive form, a form usually used for small things or as a term of endearment.-How are they made?The Cachito dough used in Cachitos Bakery is the result of extensive tests and trials, refined to a perfectly calibrated recipe meant to go well with our large variety of fillings. The rolling process has also been streamlined to be able to quickly produce as many Cachitos as anyone could want. -What are Golfeados?Golfeados are a traditional Venezuelan dessert, similar in looks to the Cinnamon roll but spiced with Aniseed, Cheese and Cane Sugar. -What does Golfeado mean?Golfeado is nothing more the name of the pastry, although the word Golfeado calls to mind the puffy quality of the pastry.",
  category: :restaurant,
  price_range: "$",
  address: "3 Saint-Catherine West, Montreal, Quebec H2X 1Z5 Canada",
  longitude: -73.56399,
  latitude: 45.50938,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/2d/12/f8/cachito-de-jamon.jpg"
)

Recommendation.create!(
  name: "Plaza McGill",
  description: "Héritage de notre histoire en plein centre-ville de Montréal, la Plaza McGill fait partie du quotidien de notre clientèle depuis plus de 30 ans. À deux pas de la Basilique Notre-Dame de Montréal, de la rue De La Commune, des antiquaires et de plusieurs institutions financières, la Plaza McGill a su diversifier sa clientèle et ses services.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "84 Rue St-Paul E, Montreal, Quebec H2Y 1G6 Canada",
  longitude: -73.55446,
  latitude: 45.50779,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-s/02/e2/d4/f2/plaza-mcgill.jpg"
)

Recommendation.create!(
  name: "Restaurant Ganadara",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1862 Rue Sainte-Catherine O, Montreal, Quebec H3H 1M1 Canada",
  longitude: -73.58076,
  latitude: 45.492523,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0e/f7/98/b6/photo2jpg.jpg"
)

Recommendation.create!(
  name: "Le Centre Sheraton Montreal Hotel",
  description: "A downtown hotel, located on René-Lévesque Boulevard, near Bell Centre.",
  category: :attraction,
  price_range: "$$ - $$$",
  address: "1201 Rene-Levesque Blvd West, Montreal, Quebec H3B 2L7 Canada",
  longitude: -73.57188,
  latitude: 45.49797,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0f/2b/b9/83/a-downtown-hotel-located.jpg"
)

Recommendation.create!(
  name: "La Banquise",
  description: "Open 24 hours and located on Rachel Street in the heart of Le Plateau Mont-Royal, La Banquise is the ultimate spot to satisfy your poutine craving any time of day! For more than 50 years, this family-run restaurant has been a staple in Montreal’s vibrant poutine scene, serving up classic and creative poutine dishes to locals and visitors alike.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "994 Rue Rachel E, Montreal, Quebec H2J 2J3 Canada",
  longitude: -73.58056,
  latitude: 45.52772,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/10/1f/4e/84/la-banquise.jpg"
)

Recommendation.create!(
  name: "Montreal Holocaust Museum",
  description: "The Montreal Holocaust Museum tells the story of Jewish communities before, during, and after the Holocaust through the eyes of those who lived through it. You will discover thousands of authentic artifacts, documents and photos, all donated by Holocaust survivors and their families. Committed to raising awareness of the universal perils of antisemitism, racism, hate and indifference, the Museum offers memorable and moving exhibitions, events, and educational programs both online and in person.",
  category: :attraction,
  price_range: "$$",
  address: "5151 Chemin de la Côte-Sainte-Catherine, Montreal, Quebec H3W 1M6 Canada",
  longitude: -73.62706,
  latitude: 45.49742,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/10/14/bb/36/exposition-permanente.jpg"
)

Recommendation.create!(
  name: "Riverside St-Henri",
  description: "None",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "5020 Rue Saint-Ambroise, Montreal, Quebec H4C 2G1 Canada",
  longitude: -73.58057,
  latitude: 45.47275,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/1a/1f/92/6a/riverside-saint-henri.jpg"
)

Recommendation.create!(
  name: "Universel Dejeuners et Grillades PEEL",
  description: "In a refined and relaxed atmosphere, Universel Restuarant offers an impressive choice of breakfasts, pastas, pizzas, burgers and sandwiches.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "2055 Rue Peel, Montreal, Quebec H3A 1V4 Canada",
  longitude: -73.57606,
  latitude: 45.500404,
  kid_friendly: true,
  dog_friendly: false,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0b/58/99/96/universel-dejeuners-et.jpg"
)

Recommendation.create!(
  name: "Bouillon Bilk",
  description: "None",
  category: :restaurant,
  price_range: "$$$$",
  address: "1595, Boul Saint-Laurent, Montreal, Quebec H2X 2S9 Canada",
  longitude: -73.56632,
  latitude: 45.51087,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/0e/3a/0f/34/salade-de-poulpe.jpg"
)

Recommendation.create!(
  name: "Bonaparte",
  description: "Located in the heart of Old Montreal, Bonaparte will charm you with its original French-inspired cuisine that brings together tradition and trends.",
  category: :restaurant,
  price_range: "$$$$",
  address: "443 St-François-Xavier, Montreal, Quebec H2Y 2T1 Canada",
  longitude: -73.55849,
  latitude: 45.503914,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/06/92/28/95/bonaparte.jpg"
)

Recommendation.create!(
  name: "LOV de la Montagne",
  description: "Located near the Bell Center and famous Crescent street, LOV de la Montagne is the 5th location of the LOV family and 2nd to open in Montreal. Conveniently accessible by car or public transportation, it will be the new trendy place in downtown to grab brunch, lunch or diner with friends or loved ones.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "1232 de la Montagne, Montreal, Quebec H3G 1Z1 Canada",
  longitude: -73.57528,
  latitude: 45.494057,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-m/1280/23/8e/8f/20/lov-de-la-montagne.jpg"
)

Recommendation.create!(
  name: "Candide",
  description: "Le restaurant Candide welcomes you to their dining room. They are open at night from Wednesday to Sunday. You can pay by MasterCard, Visa, gift certificates and Interac.",
  category: :restaurant,
  price_range: "$$$$",
  address: "551 Rue Saint Martin, Montreal, Quebec H3J 2L6 Canada",
  longitude: -73.56927,
  latitude: 45.48901,
  kid_friendly: true,
  dog_friendly: true,
  outdoor: false,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/09/56/d4/1a/restaurant-candide.jpg"
)

Recommendation.create!(
  name: "Kyo Bar Japonais",
  description: "Located in the heart of Old Montreal, Kyo Bar Japonais is a culinary experience that blends traditional and contemporary Japanese cuisine. With its extensive sake list and a variety of small plates, Kyo offers a unique dining experience in a stylish setting.",
  category: :restaurant,
  price_range: "$$ - $$$",
  address: "711 Côte de la Place d'Armes, Montreal, Quebec H2Y 2X6 Canada",
  longitude: -73.5542,
  latitude: 45.50305,
  kid_friendly: false,
  dog_friendly: true,
  outdoor: true,
  image_url: "https://media-cdn.tripadvisor.com/media/photo-o/1a/6b/36/c0/kyo-bar-japonais.jpg"
)

puts "Done!"
