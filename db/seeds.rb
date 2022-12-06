# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

paris = City.create(name: "Paris",
            description: "Oo la la",
            latitude: 48.864716,
            longitude: 2.349014,
            region: "ile-de-france",
            country: "France",
            continent: "Europe",
            tags: "Romantic, Historical")

Journey1 = Journey.create(user: User.first, start_date: Date.today, end_date: Date.tomorrow, tag: "romantic", comment: "our honeymoon")
