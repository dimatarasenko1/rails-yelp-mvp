# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Review.destroy_all

10.times do
  new_restaurant = Restaurant.create(name: Faker::Name.unique.name,
                                  address: Faker::Address.street_address,
                                  phone_number: Faker::PhoneNumber.phone_number_with_country_code,
                                  category: Restaurant::VALID_CATEGORIES.sample)
  new_review = Review.new(content: Faker::GreekPhilosophers.quote, rating: (0..5).to_a.sample)
  new_review.restaurant = new_restaurant
  new_restaurant.save
  new_review.save
end
