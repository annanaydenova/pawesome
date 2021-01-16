# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Animal.destroy_all

anna = User.new(
  first_name: "Anna",
  last_name: "Naydenova",
  city: "Paris",
  user_type: "I'm looking for someone to take care of my little buddies !",
  about: "Animal lover since 2005 !",
  email: "anna@gmail.com",
  password: "Anna2301"
)
anna.save!

richard = User.new(
  first_name: "Richard",
  last_name: "Bates",
  city: "Paris",
  user_type: "I'm looking for someone to take care of my little buddies !",
  about: "I hate people but love dogs",
  email: "richard@gmail.com",
  password: "richard123"
)
richard.save!

felix = User.create(
  first_name: "Felix",
  last_name: "De Perthuis",
  city: "Paris",
  user_type: "I'm looking for someone to take care of my little buddies !",
  about: "I've 12 cats already :)",
  email: "felix.deperthuis@gmail.com",
  password: "felix123"
)
felix.save!

15.times do
     Animal.create!(
      name: Faker::Creature::Animal.name,
      description: "Nice doggo",
      animal_type: "dog",
      address: "Paris",
      start_date: DateTime.now,
      end_date: DateTime.now + 1.day,
      user: User.all.sample)
  end

  