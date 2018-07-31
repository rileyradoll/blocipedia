# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
require 'factory_bot_rails'

10.times do
  User.create!(
    email: Faker::Internet.email,
    password: 'helloworld',
    confirmed_at: Date.today
   )
end

users = User.all

50.times do
  Wiki.create!(
    user: users.sample,
    title: Faker::BojackHorseman.quote,
    body: Faker::BojackHorseman.tongue_twister
  )
end

wikis = Wiki.all

standard = User.create!(
  email: 'standard@example.com',
  password: 'password',
  confirmed_at: Date.today,
  role: :standard
)

premium = User.create(
  email: 'premium@example.com',
  password: 'password',
  confirmed_at: Date.today,
  role: :premium
)

admin = User.create(
  email: 'admin@example.com',
  password: 'password',
  confirmed_at: Date.today,
  role: :admin
)

puts "Seeding complete"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
