# journey1 = Journey.create!(start_date:Date.new(2022,12,14), end_date:Date.new(2022,12,21), tag: "first journey", comment: "first holiday", name: "journey1", user: User.first)
# journey2 = Journey.create!(start_date:Date.new(2021,12,14), end_date:Date.new(2021,12,21), tag: "old journey", comment: "old holiday", name: "journey2", user: User.first)
# journey3 = Journey.create!(start_date:Date.new(2022,12,02), end_date:Date.new(2022,12,10), tag: "current journey", comment: "current holiday", name: "journey3", user: User.first)
# journey4 = Journey.create!(start_date:Date.new(2023,12,14), end_date:Date.new(2023,12,21), tag: "future journey", comment: "future holiday", name: "journey4", user: User.first)

Activity.destroy_all
Journey.destroy_all
City.destroy_all

paris = City.create(name: "Paris",
                    description: "",
                    latitude: 48.866667,
                    longitude: 2.333333,
                    country: "France",
                    continent: "Europe",
                    region: "Ile de France",
                    tags: "Major city, Food",
                    next_cities: %w[Versailles Lyon Marseille La-Rochelle Lille Chambéry Nantes Toulouse Bordeaux Aubenas Ars-en-Ré Strasbourg Grenoble Annecy Biarritz Saint-Malo])

lyon = City.create(name: "Lyon",
                   description: "",
                   latitude: 45.7578137,
                   longitude: 4.8320114,
                   country: "France",
                   continent: "Europe",
                   region: "Auvergne Rhone Alpes",
                   tags: "Major city, Food, Mountain",
                   next_cities: %w[Paris Marseille Chambéry Versailles Aubenas Grenoble Annecy])

marseille = City.create(name: "Marseille",
                        description: "",
                        latitude: 43.2961743,
                        longitude: 5.3699525,
                        country: "France",
                        continent: "Europe",
                        region: "Provences Alpes Cotes d'azur",
                        tags: "Major city, Food, Sea",
                        next_cities: %w[Paris Lyon Chambéry Versailles Toulouse Grenoble Annecy Bordeaux])

la_rochelle = City.create(name: "La-Rochelle",
                          description: "",
                          latitude: 46.1591126,
                          longitude: -1.1520434,
                          country: "France",
                          continent: "Europe",
                          region: "Nouvelle Aquitaine",
                          tags: "Sea",
                          next_cities: %w[Paris Nantes Versailles Toulouse Bordeaux Biarritz Saint-Malo])

lille = City.create(name: "Lille",
                    description: "",
                    latitude: 50.6365654,
                    longitude: 3.0635282,
                    country: "France",
                    continent: "Europe",
                    region: "Haut de France",
                    tags: "Major city, Food",
                    next_cities: %w[Paris Versailles Strasbourg])

chambery = City.create(name: "Chambéry",
                       description: "",
                       latitude: 45.5662672,
                       longitude: 5.9203636,
                       country: "France",
                       continent: "Europe",
                       region: "Auvergne Rhone Alpes",
                       tags: "Mountain",
                       next_cities: %w[Paris Lyon Marseille Versailles Aubenas Grenoble Annecy])

nantes = City.create(name: "Nantes",
                     description: "",
                     latitude: 47.2186371,
                     longitude: -1.5541362,
                     country: "France",
                     continent: "Europe",
                     region: "Loire Atlantique",
                     tags: "Major city, Sea",
                     next_cities: %w[Paris La-Rochelle Versailles Toulouse Ars-en-Ré Biarritz Saint-Malo])

versailles = City.create(name: "Versailles",
                         description: "",
                         latitude: 48.8035403,
                         longitude: 2.1266886,
                         country: "France",
                         continent: "Europe",
                         region: "Ile de France",
                         tags: "Major city",
                         next_cities: %w[Paris Lyon Marseille La-Rochelle Lille Chambéry Nantes Toulouse Bordeaux Aubenas Ars-en-Ré Strasbourg Grenoble Annecy Biarritz Saint-Malo])

toulouse = City.create(name: "Toulouse",
                       description: "",
                       latitude: 43.6044622,
                       longitude: 1.4442469,
                       country: "France",
                       continent: "Europe",
                       region: "Occitanie",
                       tags: "Major city, Food",
                       next_cities: %w[Paris Marseille La-Rochelle Nantes Versailles Bordeaux Ars-en-Ré Biarritz])

bordeaux = City.create(name: "Bordeaux",
                       description: "",
                       latitude: 44.841225,
                       longitude: -0.5800364,
                       country: "France",
                       continent: "Europe",
                       region: "Nouvelle Aquitaine",
                       tags: "Major city, Sea",
                       next_cities: %w[Paris La-Rochelle Versailles Toulouse Ars-en-Ré Biarritz])

aubenas = City.create(name: "Aubenas",
                      description: "",
                      latitude: 44.6205476,
                      longitude: 4.3902399,
                      country: "France",
                      continent: "Europe",
                      region: "Auvergne Rhone Alpes",
                      tags: "Mountain",
                      next_cities: %w[Paris Lyon Chambéry Versailles Grenoble Annecy])

ars_en_re = City.create(name: "Ars-en-Ré",
                        description: "",
                        latitude: 46.208056,
                        longitude: -1.515833,
                        country: "France",
                        continent: "Europe",
                        region: "Nouvelle Aquitaine",
                        tags: "Sea",
                        next_cities: %w[La-Rochelle])

strasbourg = City.create(name: "Strasbourg",
                         description: "",
                         latitude: 48.584614,
                         longitude: 7.7507127,
                         country: "France",
                         continent: "Europe",
                         region: "Grand Est",
                         tags: "Major city, Food",
                         next_cities: %w[Paris Lille Versailles])

grenoble = City.create(name: "Grenoble",
                       description: "",
                       latitude: 45.1875602,
                       longitude: 5.7357819,
                       country: "France",
                       continent: "Europe",
                       region: "Auvergne Rhone Alpes",
                       tags: "Mountain",
                       next_cities: %w[Paris Lyon Marseille Chambéry Versailles Aubenas Annecy])

annecy = City.create(name: "Annecy",
                     description: "",
                     latitude: 45.8992348,
                     longitude: 6.1288847,
                     country: "France",
                     continent: "Europe",
                     region: "Auvergne Rhone Alpes",
                     tags: "Mountain",
                     next_cities: %w[Paris Lyon Marseille Chambéry Versailles Aubenas Grenoble])

biarritz = City.create(name: "Biarritz",
                       description: "",
                       latitude: 43.4832523,
                       longitude: -1.5592776,
                       country: "France",
                       continent: "Europe",
                       region: "Nouvelle Aquitaine",
                       tags: "Sea, Food",
                       next_cities: %w[Paris La-Rochelle Nantes Versailles Toulouse Bordeaux Ars-en-Ré Biarritz])

saint_malo = City.create(name: "Saint-Malo",
                         description: "",
                         latitude: 48.649337,
                         longitude: -2.025674,
                         country: "France",
                         continent: "Europe",
                         region: "Bretagne",
                         tags: "Sea, Food",
                         next_cities: %w[Paris La-Rochelle Nantes Versailles Ars-en-Ré])

Journey1 = Journey.create(user: User.first, start_date: Date.today, end_date: Date.tomorrow, tag: "romantic", comment: "our honeymoon")

# cj = CityJourney.create(city:City.last, journey:Journey.last, start_date: Date.today, end_date: Date.tomorrow)

notre_dame = Activity.create(name: "Notre-Dame",
                             tags: "Historical, Touristy",
                             description: "This famous cathedral, a masterpiece of Gothic architecture on which construction began in the 12th century, stands on the Île de la Cité and is the symbolic heart of the city.",
                             city_id: paris.id)

eiffel_tower = Activity.create(name: "Eiffel Tower",
                               tags: "Historical, Touristy",
                               description: "Completed in 1889, this colossal landmark, although initially hated by many Parisians, is now a famous symbol of French civic pride.",
                               city_id: paris.id)

seine_river = Activity.create(name: "Seine River",
                              tags: "Romantic",
                              description: "This famous river flows from east to west through the heart of the city and divides Paris's Left Bank and Right Bank.",
                              city_id: paris.id)

musee_du_cinema = Activity.create(name: "Musee du Cinema et de la Miniature",
                                  tags: "Museums",
                                  description: "This stately old building is located in Vieux Lyon.",
                                  city_id: lyon.id)

basilique_notre_dame = Activity.create(name: "Basilique Notre Dame de Fourviere",
                                       tags: "Historical",
                                       description: "Standing atop Fourvière Hill, this basilica, constructed in the late 19th century, has an ornate interior to contrast its grave exterior.",
                                       city_id: lyon.id)

parc_de_la_tete = Activity.create(name: "Parc de la Tete d'Or",
                                  tags: "Hidden Gem, Sunny",
                                  description: "Come enjoy a moment of relaxation in family in a wooded and natural setting. A double course of 18 tracks awaits you.",
                                  city_id: lyon.id)

parc_national = Activity.create(name: "Parc National des Calanques",
                                tags: "Sunny, Romantic",
                                description: "Beautiful sea and stunning views make this a top attraction",
                                city_id: marseille.id)

mucem = Activity.create(name: "Mucem",
                        tags: "Museum, Touristy",
                        description: "The MuCEM is a museum of 21st-century civilizations, principally concerned with comparing all aspects of the cultures of the Mediterranean",
                        city_id: marseille.id)

palais = Activity.create(name: "Palais Longchamp",
                         tags: "Historic, Romantic",
                         description: "A stunning building in central Marseille. The museum of natural history and the museum of fine art are both incredible exhibits, very well designed.",
                         city_id: marseille.id)

aquarium = Activity.create(name: "Aquarium La Rochelle",
                           tags: "Sea, Touristy",
                           description: "Located in the city center, facing the old harbor, discover one of the greatest European private aquariums",
                           city_id: la_rochelle.id)

towers = Activity.create(name: "Towers of La Rochelle",
                         tags: "Historical, Touristy",
                         description: "Looking out to the Atlantic, the Tour Saint-Nicolas (14th century), the Tour de la Chaîne (14th century) and the Tour de la Lanterne (12th and15th century) are the remains of a great fortification building campaign undertaken in the City of La Rochelle from 1199.",
                         city_id: la_rochelle.id)

marche = Activity.create(name: "Marché du Centre Ville",
                         tags: "Food, Hidden Gem",
                         description: "One of the best markets in the whole of France.",
                         city_id: la_rochelle.id)

grande_place = Activity.create(name: "Grande Place",
                               tags: "Historical",
                               description: "Main square where the magnificent 17th-century Vieille Bourse is located.",
                               city_id: lille.id)

zoo = Activity.create(name: "Lille Zoo",
                      tags: "Touristy, Adventurous",
                      description: "A great little zoo with cheap entry.",
                      city_id: lille.id)

stade = Activity.create(name: "Stade Pierre Mauroy",
                        tags: "Adventurous, Touristy",
                        description: "Awesome Experience in a 1st class Modern venue.",
                        city_id: lille.id)

ville = Activity.create(name: "Ville Ancienne",
                        tags: "Historic",
                        description: "The Ville Ancienne of Chambéry is must when you visit savoy.",
                        city_id: chambery.id)

musee = Activity.create(name: "Musee des Charmettes",
                        tags: "Museums",
                        description: "It is a charming, restful, welcoming place. Not far from the city of Chambéry, a few minutes by car.",
                        city_id: chambery.id)

centre = Activity.create(name: "Centre Commercial Chamnord",
                         tags: "Shopping",
                         description: "Large outlet village for all your shopping needs",
                         city_id: chambery.id)

jardin = Activity.create(name: "Jardin des Plantes",
                         tags: "Sunny, Romantic",
                         description: "The Botanical Garden: at the heart of plants The Botanical Gardens of Nantes, with 7 hectares of green spaces in the centre of town.",
                         city_id: nantes.id)

les_machines = Activity.create(name: "Les Machines de L'ile",
                               tags: "Museums, Hidden Gem",
                               description: "The Machines de lIle is an artistic and a tourist project. It is a blend of the invented worlds of Jules Verne, the mechanical universe of Leonardo da Vinci, and the industrial history of Nantes.",
                               city_id: nantes.id)

passage = Activity.create(name: "Passage Pommeraye",
                          tags: "Shopping",
                          description: "A narrow passage covered with a glass ceiling consisting of three levels of shopping galleries.",
                          city_id: nantes.id)

palace = Activity.create(name: "Palace of Versailles",
                         tags: "Historic",
                         description: "Palace, Trianon Palace, and the estate of Marie-Antoinette: open daily except Mondays and certain public holidays. Gardens and park: open daily.",
                         city_id: versailles.id)

galerie = Activity.create(name: "Galerie des Carrosses",
                          tags: "Museums, Historic",
                          description: "Such detail within the carriages, the death carriage was a real highlight. Good information displays and even sleds.",
                          city_id: versailles.id)

grand_canal = Activity.create(name: "Grand Canal",
                              tags: "Historic, Romantic",
                              description: "One can either boat in the canal or simply walk around the well laid-out gardens around the canal",
                              city_id: versailles.id)

jardin = Activity.create(name: "Jardin Japonais",
                         tags: "Romantic",
                         description: "The true atmosphere of a Japanese garden with a zen garden, a dry waterfall, the classic red bridge and of course beautiful plants.",
                         city_id: toulouse.id)

theatre = Activity.create(name: "Theatre du Capitole",
                          tags: "Romantic",
                          description: "In additon to being the city hall, it also houses an archestra and an opera company.",
                          city_id: toulouse.id)

quai_de_la = Activity.create(name: "Quai de la Daurade",
                             tags: "Touristy",
                             description: "Walking along the river gives a relaxing experience and enjoyable views.",
                             city_id: toulouse.id)

water_mirror = Activity.create(name: "The Water Mirror",
                               tags: "Touristy, Romantic",
                               description: "The Miroir d'Eau is less than 10 years old, but located just across from a monument nearly 3 centuries old, it has become one of the cities main attractions.",
                               city_id: bordeaux.id)

jardin_public = Activity.create(name: "Jardin Public",
                                tags: "Romantic, Sunny",
                                description: "Lots of places to sit and relax, and a lovely walk around the edge.",
                                city_id: bordeaux.id)

grand_theatre = Activity.create(name: "Grand Theatre",
                                tags: "Entertainment",
                                description: "Considered by many to be the cultural heart of the city, this elaborately carved opera house surprises the senses with its fine architecture and interior design as well as its world-class performances.",
                                city_id: bordeaux.id)

chateau = Activity.create(name: "Chateau d'Aubenas",
                          tags: "Historic",
                          description: "The Chateau or castle is at the top of this hillside town, overlooking the valley. Nice setting with a few restaurants and bars around it.",
                          city_id: aubenas.id)

cimes = Activity.create(name: "Cîmes et Canyons",
                        tags: "Adventurous",
                        description: "Activities full nature a la carte, just for you! Julien & Pierre-Marc propose you to discover in a fun and convivial atmosphere the canyoning, the routes adventures Via ferrata, Via Corda , Rockclimbing and Big Abseil down 180m.",
                        city_id: aubenas.id)

v_b = Activity.create(name: "V and B Aubenas",
                      tags: "Entertainment",
                      description: "A super nice bar, a wide choice of beers, good atmosphere and good music, welcoming smiling team and excellent advice for the choice of specific alcohol.",
                      city_id: aubenas.id)

clocher = Activity.create(name: "Clocher d'Ars",
                          tags: "Historic",
                          description: "Worth the time to get off the cycle route into the town square. Beautiful architecture. The sandstone carving entrance is wonderful.",
                          city_id: ars_en_re.id)

cycland = Activity.create(name: "Cycland",
                          tags: "Adventurous",
                          description: "We rent bicycles for the whole family. We also offer child trailers (4 months to 6 years), animals trailers, three wheels bicycle, tandem bikes and follower.",
                          city_id: ars_en_re.id)

philippe = Activity.create(name: "Philippe Deschamps",
                           tags: "Museums",
                           description: "Art gallery which exhibits paintings by Philippe Deschamps, which represents mainly marine, sailing regatta and landscapes of the Ile de Ré.",
                           city_id: ars_en_re.id)

la_petite = Activity.create(name: "La Petite France",
                            tags: "Historic",
                            description: "Strasbourg's historic neighborhood is a serene collection of cobblestone roads, fine restaurants and 16th-century buildings.",
                            city_id: strasbourg.id)

barrage = Activity.create(name: "Barrage Vauban",
                          tags: "Romantic, Historic",
                          description: "The roof of the Barrage provides free access and delivers spectacular views of the city.",
                          city_id: strasbourg.id)

palais_rohan = Activity.create(name: "Palais de Rohan",
                               tags: "Museums",
                               description: "Elegant 18th-century palace houses three museums: Musee des Beaux Arts, Musee Archeologique and Musee des Arts Decoratifs.",
                               city_id: strasbourg.id)

cable_car = Activity.create(name: "Grenoble Bastille Cable Car",
                            tags: "Adventurous",
                            description: "Grenoble is a large and beautiful city surrounded by mountains. This chairlift allows you to have a breathtaking view of Grenoble and its surroundings.",
                            city_id: grenoble.id)

fort = Activity.create(name: "Fort de la Bastille",
                       tags: "Historic",
                       description: "Unchallenged views of the mountains and the city",
                       city_id: grenoble.id)

musee_eveche = Activity.create(name: "Musee de l'Ancien Eveche",
                               tags: "Museums",
                               description: "A fascinating building which vividly highlights the archeological heritage of Grenoble",
                               city_id: grenoble.id)

lake_annecy = Activity.create(name: "Lake Annecy",
                              tags: "Romantic",
                              description: "A few steps from Switzerland is the magnificent Lake Annecy. Its green and blue hues are sure to charm you. Surrounded by breathtaking mountains, the lake extends between Annecy and Doussard.",
                              city_id: annecy.id)

semnoz = Activity.create(name: "Semnoz",
                         tags: "Mountain",
                         description: "A must go if you love a good view. Great spot for picnic and champagne in summer.",
                         city_id: annecy.id)

la_tournette = Activity.create(name: "La Tournette",
                               tags: "Mountain",
                               description: "This is the highest peak around Lake Annecy and it can be climbed from more than one direction.",
                               city_id: annecy.id)

rocher = Activity.create(name: "Rocher de la Vierge",
                         tags: "Mountain",
                         description: "Tripadvisor Travellers Choice award winner, unparalleled scenary and views",
                         city_id: biarritz.id)

aquarium_biarritz = Activity.create(name: "Aquarium de Biarritz",
                                    tags: "Touristy",
                                    description: "The aquarium is built into a hill side, and it gives a very natural feeling when you are in the building. There are different levels for each exhibitions, and the sea lion feeding is on the top.",
                                    city_id: biarritz.id)

port_vieux = Activity.create(name: "Port Vieux Beach",
                             tags: "Sea, Touristy, Sunny",
                             description: "Little beach but full of love. The sand is always humid and is a nice place to go for a swim in a quiet place.",
                             city_id: biarritz.id)

remparts = Activity.create(name: "Remparts de Saint Malo",
                           tags: "Sea",
                           description: "St Malo old town is surrounded by its old walls which you can walk in an almost complete circuit with both sea views and views of the old town.",
                           city_id: saint_malo.id)

plage_sillon = Activity.create(name: "Sillon Beach",
                               tags: "Sea",
                               description: "Long, long golden sand beach when the tide is out. The water is perfect. Slight waves, soft sandy bottom. Heavenly.",
                               city_id: saint_malo.id)

cathedrale_saint_malo = Activity.create(name: "Saint Malo Cathedral",
                                        tags: "Historic",
                                        description: "This is a beautiful cathedral! Make sure you visit it if you go to Saint-Malo! You get a sense of the history as well the impression of a vibrant, active place of worship.",
                                        city_id: saint_malo.id)
# nantes_journey = Journey.create(name: "Nantes to Ars-en-Ré",
#                                 tag: "Sea",
#                                 description: "This trip starting in Nantes with the next city to Biarritz and ending in Ars-en-Ré.",
#                                 city_id: nantes.id)
# saint_malo_journey = Journey.create(name: "Saint-Malo to Ars-en-Ré",
#                                 tag: "Sea",
#                                 description: "This trip starting in Saint-Malo and ending in Ars-en-Ré.",
#                                 city_id: saint_malo.id)
# aubenas_journey = Journey.create(name: "Aubenas to Annecy",
#                                 tag: "Mountain",
#                                 description: "This trip starting in Aubenas and ending in Annecy.",
#                                 city_id: aubenas.id)
# annecy_journey = Journey.create(name: "Annecy to Grenoble",
#                                 tag: "Mountain",
#                                 description: "This trip starting at Annecy with first stop at Grenoble second stop is Chambéry and ending at Aubenas.",
#                                 city_id: annecy.id)
# strasbourg_journey = Journey.create(name: "Strasbourg to Bordeaux",
#                                 tag: "Touristy",
#                                 description: "This trip starting at Strasbourg with first stop in Paris second stop at Lyon third stop in Versailles and finishing at Bordeaux.",
#                                 city_id: strasbourg.id)
# lille_journey = Journey.create(name: "Lille to Strasbourg",
#                                 tag: "Touristy",
#                                 description: "This trip starting at Lille with first stop in Versailles second stop in Bordeaux third stop in Paris and ending at Strasbourg.",
#                                 city_id: lille.id)
# biarritz_journey = Journey.create(name: "Biarritz to Marseille",
#                                 tag: "food",
#                                 description: "This trip starting at Biarritz with first stop in Paris and ending in Marseille.",
#                                 city_id: biarritz.id)
# saint_journey = Journey.create(name: "Saint-Malo to Paris",
#                                 tag: "food",
#                                 description: "This trip starting at Saint-Malo with first stop in Paris second stop in Strasbourg third stop in Lille and ending in Paris.",
#                                 city_id: saint_malo.id)
