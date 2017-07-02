class AboutController < ApplicationController
  def index
    @most_reviewed = Product.most_reviewed
    @newest_product = Product.newest_product
    @us_origin = Product.us_origin
  end
end
