# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Journey.destroy_all

journey1 = Journey.create!(start_date:Date.new(2022,12,14), end_date:Date.new(2022,12,21), tag: "first journey", comment: "first holiday", name: "journey1", user: User.first)
journey2 = Journey.create!(start_date:Date.new(2021,12,14), end_date:Date.new(2021,12,21), tag: "old journey", comment: "old holiday", name: "journey2", user: User.first)
journey3 = Journey.create!(start_date:Date.new(2022,12,02), end_date:Date.new(2022,12,10), tag: "current journey", comment: "current holiday", name: "journey3", user: User.first)
journey4 = Journey.create!(start_date:Date.new(2023,12,14), end_date:Date.new(2023,12,21), tag: "future journey", comment: "future holiday", name: "journey4", user: User.first)
