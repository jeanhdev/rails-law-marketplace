# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
Service.destroy_all
Procedure.destroy_all

# puts 'Creating users...'
# # users_attributes = [
# #   {
# #     email:         'maitre.capello@gmail.com',
# #     password:      '123456',
# #     job:           'Avocat'
# #   },
# #   {
# #     email:         'user.one@gmail.com',
# #     password:      '123456',
# #   },
# #   {
# #     email:         'user.two@gmail.com',
# #     password:       '123456',
# #   }
# # ]

# capello = User.create!({
#     email:         'maitre.capello@gmail.com',
#     password:      '123456',
#     job:           'Avocat'
# })

# justiciable_random = User.create!({
#     email:         'user.one@gmail.com',
#     password:      '123456'
# })

# puts 'Creating services...'
# # services_attributes = [
# #   {
# #     title:         'Divorce par consentement mutuel',
# #     price:         300,
# #     user:          capello,
# #   },
# #   {
# #     title:         'Divorce pour faute',
# #     price:         900,
# #     user:          capello,
# #   },
# # ]
# divorce = Service.create!({
#     title:         'Divorce par consentement mutuel',
#     price:         300,
#     user:          capello,
#   }
# )

# puts 'Creating procedures...'
# procedures_attributes = [
#   {
#     date:         '19 Sept. 2019',
#     status:       'En attente',
#     grievance:    "Je veux divorcer pour cause d'adultère",
#     user:          justiciable_random,
#     service:       divorce,
#   },
# ]
# Procedure.create!(procedures_attributes)
# puts 'Finished!'


puts '----------------------------------'

30.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name:  Faker::Name.last_name,
    job:        'avocat',
    experience: rand(1..15),
    email:      Faker::Internet.email,
    address:    Faker::Address.city,
    avatar:     'https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/10_avatar-512.png',
    password:   '123456'
  )

  service = Service.create!(
    title:       'Divorce par consentement mutuel',
    description: Faker::Quote.famous_last_words,
    category:    'Divorce',
    duration:    rand(1..3),
    price:       rand(300...1000),
    user:        user
  )
end
