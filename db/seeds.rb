# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Country.create(name: Faker::Address.country)
end

Country.all.each do |country|
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    country_id: country.id,
    email: Faker::Internet.email
  )
end

User.all.each do |user|
  Purchase.create(
    date: Faker::Date.between(from: '2021-01-01', to: Date.today),
    amount: Faker::Number.positive(1.00, 100.00),
    user_id: user.id
  )
end
