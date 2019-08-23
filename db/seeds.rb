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


# a.remote

puts 'Creating 10 NY top lawyers...'

User.create!(
    first_name: "Kenneth",
    last_name:  "H. Eckstein",
    job:        'Avocat',
    experience: 15,
    email:      "kenneth@hellotenor.com",
    address:    "New York, US",
    specialty:  'Droit fiscal',
    avatar:     '',
    password:   '123456'
)

User.create!(
    first_name: "Robert",
    last_name:  "T. Schmidt",
    job:        'Avocat',
    experience: 10,
    email:      "robert@hellotenor.com",
    address:    "London, UK",
    specialty:  'Droit fiscal',
    avatar:     '',
    password:   '123456'
)

User.create!(
    first_name: "Eric",
    last_name:  "Dupond-Moretti",
    job:        'Avocat',
    experience: 12,
    email:      "eric@hellotenor.com",
    address:    "Paris, FR",
    specialty:  'Droit pénal, Droit du travail',
    avatar:     '',
    password:   '123456'
)

User.create!(
    first_name: "Patrick",
    last_name:  "Maisonneuve",
    job:        'Avocat',
    experience: 8,
    email:      "patrick@hellotenor.com",
    address:    "Paris, FR",
    specialty:  'Droit pénal, Droit fiscal',
    avatar:     '',
    password:   '123456'
)

puts 'Creating Jean as a client...'

user_attributes = [{
    first_name:    'Jean',
    last_name:     'Hirtz',
    email:         'jean@hellotenor.com',
    password:      '123456',
    job:           'Justiciable',
    address:       'Bordeaux',
    avatar:        ''
}]

User.create!(user_attributes)

puts '- - - - - - - - - - - - - - - -'

puts 'Finished!'
