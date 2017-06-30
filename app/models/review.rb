class Review < ActiveRecord::Base
  validates :user, :comment, :rating, :presence => true
end
