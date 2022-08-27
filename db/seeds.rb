# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

teams =[
  {name: "Ind", rating: 9},
  {name: "Aus", rating: 8},
  {name: "NZ", rating: 9},
  {name: "BCB", rating: 6},
  {name: "ENG", rating: 7}

]
p "Inserting teams into - #{teams.length}"
Team.create!(teams)
p 'Inserdert seeds data'
