require 'faker'

Product.destroy_all

50.times do |index|
  product = Product.create!(
    name: Faker::Lorem.word,
    description: Faker::Lorem.sentence,
    image: Faker::LoremPixel.image,
    origin: Faker::Address.country,
    cost: Faker::Number.decimal(2, 2)
  )
  Faker::Number.between(1, 8).times do |index|
    product.reviews.create!(
      user: Faker::Name.name,
      comment: Faker::Lorem.paragraph,
      rating: Faker::Number.between(1, 5),
    )
  end
end
