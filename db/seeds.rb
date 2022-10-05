require 'faker'

# Create 10 users using Faker
10.times do
    User.create(name: Faker::Name.name, email: Faker::Internet.email)
    end

# Create 10 recipes using Faker
10.times do
    Recipe.create(name: Faker::Food.dish, prep_time: Faker::Number.number(digits: 2), cook_time: Faker::Number.number(digits: 2), description: Faker::Food.description, public: Faker::Boolean.boolean, user_id: Faker::Number.between(from: 1, to: 10))
    end

