class Review < ActiveRecord::Base
  belongs_to :product
  validates :user, :comment, :rating, :presence => true
  validates_length_of :comment, minimum: 50
  validates_length_of :comment, maximum: 250
  validates_numericality_of :rating, less_than_or_equal_to: 5
  validates_numericality_of :rating, greater_than_or_equal_to: 1
end
