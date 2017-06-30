class Review < ActiveRecord::Base
  belongs_to :product
  validates :user, :comment, :rating, :presence => true
  validates_length_of :comment, minimum: 50
  validates_length_of :comment, maximum: 250

end
