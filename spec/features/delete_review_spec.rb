require 'rails_helper'

describe "the delete a product review process" do
  let(:prod1){
    Product.create(
    name: "name1",
    description: "desc1",
    image: "img1",
    origin: "origin1",
    cost: 1,
    )
  }

  it "deletes a review" do
    prod1.reviews.create(
      user: "Jill",
      comment: "this is just fantastic. I love it. Blah blah. I think I hit 50 chars.",
      rating: 5
    )
    visit product_path(prod1)
    click_link 'Delete'
    expect(page).to have_content("Review successfully destroyed!")
    expect(page).to have_no_content(prod1.name)
  end

end
