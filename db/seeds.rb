require 'faker'

Product.destroy_all

250.times do |index|
  product = Product.create!(
    name: Faker::Dessert.variety,
    description: Faker::Lorem.sentences(1),
    image: Faker::Avatar.image,
    origin: Faker::Address.country,
  )
  Faker::Number.between(3, 30).times do |index|
    product.reviews.create!(
      user: Faker::RickAndMorty.character,
      comment: Faker::RickAndMorty.quote,
      rating: Faker::Number.between(1, 5),
    )
  end
end
