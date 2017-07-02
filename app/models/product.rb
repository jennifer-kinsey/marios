class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :description, :image, :origin, :cost, :presence => true


######### SCOPES ##########

# 1)  The product with the most reviews.

  scope :most_reviewed, -> {(
  select("products.*, count(reviews.id) as reviews_count")
  .joins(:reviews)
  .group("products.id")
  .order("reviews_count DESC")
  .limit(1)
  )}

# 2) The three most recently added products.
  scope :newest_product, -> {
    order(created_at: :desc)
    .limit(3)
  }

# 3) All products made in the USA for buyers that want to buy local products.
  scope :sort_by_us_origin, ->{
     where(origin: 'United States') }

end
