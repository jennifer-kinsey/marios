class Product < ActiveRecord::Base
  has_many :reviews

  validates :name, :description, :image, :origin, :cost, :presence => true


######### SCOPES ##########

# 1)  The product with the most reviews.
scope :sort_by_most_reviews, -> {(
  select("products.*, count(reviews.id) as reviews_count")
  .joins(:reviews)
  .group("products.id")
  .order("reviews_count DESC")
  .limit(10)
  )}

# 2) The three most recently added products.
  scope :sort_by_newest, ->{
    order(created_at: :desc) }

# 3) All products made in the USA for buyers that want to buy local products.
  scope :sort_by_us_origin, ->{
     where(origin: 'United States') }

end
