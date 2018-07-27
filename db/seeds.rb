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
   FactoryBot.create(:user)
end

users = User.all

50.times do
  FactoryBot.create(
    :wiki,
    user: users.sample
  )
end

wikis = Wiki.all

standard = FactoryBot.create(
  :user,
  email: 'stand@mail.com',
  password: 'password',
  password_confirmation: 'password',
  role: 'standard'
)

premium = FactoryBot.create(
  :user,
  email: 'prem@mail.com',
  password: 'password',
  password_confirmation: 'password',
  role: 'premium'
)

admin = FactoryBot.create(
  :user,
  email: 'admin@mail.com',
  password: 'password',
  password_confirmation: 'password',
  role: 'admin'
)

puts "Seeding complete"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
