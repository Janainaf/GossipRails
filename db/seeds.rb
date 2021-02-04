# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
    cities=City.create!(name: Faker::Nation.capital_city, zip_code: Faker::Code.sin )
end

10.times do
    user = User.create!(first_name: Faker::FunnyName.name, last_name: Faker::Ancient.primordial, description: Faker::Marketing.buzzwords, email: Faker::Internet.email, age: Faker::Number.between(16, 116), city_id: Random.rand(1..City.count))
    end

20.times do
  gossip = Gossip.create!(title: Faker::Hipster.sentence, content: Faker::Quote.famous_last_words, user_id: Random.rand(1..User.count))
end

#10.times do
 # tag = Tag.create!(title: Faker::Hacker.adjective)
#end
