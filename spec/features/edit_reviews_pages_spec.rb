require 'rails_helper'

describe "the edit a review process" do
  it "edits a review" do
    product = Product.create(name: 'pizza',  description: "triangular food of awesomeness", image: "pizza.jpg", origin: 'USA')
    review = Review.create(user: 'Jim', product_id: product.id, comment: "I love Marios pizza", rating: 5)
    visit product_path(product)
    click_on 'Edit'
    fill_in 'User', :with => 'James'
    click_on 'Update Review'
    expect(page).to have_content 'James'
  end

  # it "gives error when no description is entered" do
  #   product = Product.create(name: 'pizza',  description: "triangular food of awesomeness", image: "pizza.jpg", origin: 'USA')
  #   review = Review.create(user: 'Jim', product_id: product.id, comment: "I love Marios pizza", rating: 5)
  #   visit product_path(product)
  #   click_on 'Edit'
  #   fill_in 'User', :with => ''
  #   click_button 'Update Review'
  #   expect(page).to have_content 'errors'
  # end
end
