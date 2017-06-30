class Review < ActiveRecord::Base
  belongs_to :product
  validates :user, :comment, :rating, :presence => true
end
