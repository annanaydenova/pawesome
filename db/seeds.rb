# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do
    animal = Animal.new(
      name: "milou",
      description: "Nice doggo",
      address: "Paris",
      start_date: 20211201,
      end_date: 20211212,
      user_id: rand(1...100)
    )
    animal.save
  end