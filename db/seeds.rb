# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Journey.destroy_all

# journey1 = Journey.create!(start_date:Date.new(2022,12,14), end_date:Date.new(2022,12,21), tag: "first journey", comment: "first holiday", name: "journey1", user: User.first)
# journey2 = Journey.create!(start_date:Date.new(2021,12,14), end_date:Date.new(2021,12,21), tag: "old journey", comment: "old holiday", name: "journey2", user: User.first)
# journey3 = Journey.create!(start_date:Date.new(2022,12,02), end_date:Date.new(2022,12,10), tag: "current journey", comment: "current holiday", name: "journey3", user: User.first)
# journey4 = Journey.create!(start_date:Date.new(2023,12,14), end_date:Date.new(2023,12,21), tag: "future journey", comment: "future holiday", name: "journey4", user: User.first)

#paris = City.create(name: "Paris",
#            description: "Oo la la",
#            latitude: 48.864716,
#            longitude: 2.349014,
#            region: "ile-de-france",
#            country: "France",
#            continent: "Europe",
#            tags: "Romantic, Historical")
Activity.destroy_all
City.destroy_all
CityJourney.destroy_all
Journey.destroy_all
User.destroy_all

paris = City.create(name: "Paris",
            description: "",
            latitude:48.866667,
            longitude:2.333333,
            country: "France",
            continent: "Europe",
            region: "Ile de France",
            tags: "Historical, Museums, Romantic, Touristy",
            next_cities: "LLyon, Marseille, La Rochelle, Lille, Chambéry, Nantes, Versailles, Toulouse, Bordeaux, Aubenas, Ars en Ré, Strasbourg, Grenoble, Annecy, Biarritz, Saint Malo, Saint Malo")

lyon = City.create(name: "Lyon",
            description: "",
            latitude:45.7578137,
            longitude:4.8320114,
            country: "France",
            continent: "Europe",
            region: "Auvergne Rhone Alpes",
            tags: "Food, Historical, Museums",
            next_cities: "PParis, Marseille, Chambéry, Versailles, Aubenas, Grenoble, Annecy, Annecy")

marseille = City.create(name: "Marseille",
            description: "",
            latitude:43.2961743,
            longitude:5.3699525,
            country: "France",
            continent: "Europe",
            region: "Provences Alpes Cotes d'azur",
            tags: "Sea, Historical, Food, Museums, Sunny",
            next_cities: "PParis, Lyon, Chambéry, Versailles, Toulouse, Grenoble, Annecy, Annecy")

la_rochelle = City.create(name: "La-Rochelle",
            description: "",
            latitude:46.1591126,
            longitude:-1.1520434,
            country: "France",
            continent: "Europe",
            region: "Nouvelle Aquitaine",
            tags: "Sea, Historical",
            next_cities: "PParis, Nantes, Versailles, Toulouse, Bordeaux, Ars en Ré, Biarritz, Saint Malo, Saint Malo")

lille = City.create(name: "Lille",
            description: "",
            latitude:50.6365654,
            longitude:3.0635282,
            country: "France",
            continent: "Europe",
            region: "Haut de France",
            tags: "Historical, Food",
            next_cities: "PParis, Versailles, Strasbourg, Strasbourg")

chambery = City.create(name: "Chambéry",
            description: "",
            latitude:45.5662672,
            longitude:5.9203636,
            country: "France",
            continent: "Europe",
            region: "Auvergne Rhone Alpes",
            tags: "Mountain, Adventurous",
            next_cities: "PParis, Lyon, Marseille, Versailles, Aubenas, Grenoble, Annecy, Annecy")

nantes = City.create(name: "Nantes",
            description: "",
            latitude:47.2186371,
            longitude:-1.5541362,
            country: "France",
            continent: "Europe",
            region: "Loire Atlantique",
            tags: "Sea, Museums",
            next_cities: "PParis, La Rochelle, Versailles, Toulouse, Ars en Ré, Biarritz, Saint Malo, Saint Malo")

versailles = City.create(name: "Versailles",
            description: "",
            latitude:48.8035403,
            longitude:2.1266886,
            country: "France",
            continent: "Europe",
            region: "Ile de France",
            tags: "Historical, Touristy",
            next_cities: "PParis, Lyon, Marseille, La Rochelle, Lille, Chambéry, Nantes, , Toulouse, Bordeaux, Aubenas, Ars en Ré, Strasbourg, Grenoble, Annecy, Biarritz, Saint Malo, Saint Malo")

toulouse = City.create(name: "Toulouse",
            description: "",
            latitude:43.6044622,
            longitude:1.4442469,
            country: "France",
            continent: "Europe",
            region: "Occitanie",
            tags: "Historical, Food, Sunny",
            next_cities: "PParis, Marseille, La Rochelle, Nantes, Versailles, Bordeaux, Ars en Ré, Biarritz, Biarritz")

bordeaux = City.create(name: "Bordeaux",
            description: "",
            latitude:44.841225,
            longitude:-0.5800364,
            country: "France",
            continent: "Europe",
            region: "Nouvelle Aquitaine",
            tags: "Food, Sea, Adventurous, Romantic",
            next_cities: "PParis, La Rochelle, Versailles, Toulouse, Ars en Ré, Biarritz, Biarritz")

aubenas = City.create(name: "Aubenas",
            description: "",
            latitude:44.6205476,
            longitude:4.3902399,
            country: "France",
            continent: "Europe",
            region: "Auvergne Rhone Alpes",
            tags: "Adventurous, Hidden gem",
            next_cities: "PParis, Lyon, Chambéry, Versailles, Grenoble, Annecy, Annecy")

ars_en_re = City.create(name: "Ars-en-Ré",
            description: "",
            latitude:46.208056,
            longitude:-1.515833,
            country: "France",
            continent: "Europe",
            region: "Nouvelle Aquitaine",
            tags: "Sea, Touristy, Hidden gem",
            next_cities: "PParis, La Rochelle, Nantes, Versailles, Toulouse, Bordeaux, Biarritz, Saint Malo, Saint Malo")

strasbourg = City.create(name: "Strasbourg",
            description: "",
            latitude:48.584614,
            longitude:7.7507127,
            country: "France",
            continent: "Europe",
            region: "Grand Est",
            tags: "Food, Historical, Sunny",
            next_cities: "PParis, Lille, Versailles, Versailles")

grenoble = City.create(name: "Grenoble",
            description: "",
            latitude:45.1875602,
            longitude:5.7357819,
            country: "France",
            continent: "Europe",
            region: "Auvergne Rhone Alpes",
            tags: "Mountain, Adventurous",
            next_cities: "PParis, Lyon, Marseille, Chambéry, Versailles, Aubenas, Annecy, Annecy")

annecy = City.create(name: "Annecy",
            description: "",
            latitude:45.8992348,
            longitude:6.1288847,
            country: "France",
            continent: "Europe",
            region: "Auvergne Rhone Alpes",
            tags: "Mountain, Adventurous, Romantic",
            next_cities: "PParis, Lyon, Marseille, Chambéry, Versailles, Aubenas, Grenoble, Grenoble")

biarritz = City.create(name: "Biarritz",
            description: "",
            latitude:43.4832523,
            longitude:-1.5592776,
            country: "France",
            continent: "Europe",
            region: "Nouvelle Aquitaine",
            tags: "Sea, Food, Adventurous",
            next_cities: "PParis, La Rochelle, Nantes, Versailles, Toulouse, Bordeaux, Ars en Ré, Biarritz")

Journey1 = Journey.create(user: User.first, start_date: Date.today, end_date: Date.tomorrow, tag: "romantic", comment: "our honeymoon")

cj = CityJourney.create(city:City.last, journey:Journey.last, start_date: Date.today, end_date: Date.tomorrow)
