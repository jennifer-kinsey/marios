class Product < ActiveRecord::Base
  has_many :reviews

  validates :name, :description, :image, :origin, :presence => true
end
