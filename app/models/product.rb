class Product < ActiveRecord::Base
  validates :name, :description, :image, :origin, :presence => true
end
