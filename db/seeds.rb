# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

 99.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  username = Faker::Internet.username(specifier: 5..8)
  birthday = Faker::Date.between(from: '1994-01-01', to: '2022-12-31')
  bio = "this is a bio"
  password = "password"

  User.create!(first_name: first_name,
  last_name: last_name,
  email: email,
  username: username,
  birthday: birthday,
  bio: bio,
  password: password,
  password_confirmation: password)
 end
 