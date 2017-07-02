require 'rails_helper'

describe "the add a review process" do
  let(:prod1){
    Product.create(
    name: "name1",
    description: "desc1",
    image: "img1",
    origin: "origin1",
    cost: 1,
    )
  }

  it "adds a new review" do
    visit product_path(prod1)
    click_link 'Add new review'
    fill_in 'User', :with => 'user1'
    fill_in 'Comment', :with => 'comment foiueafou odiusdoi  oiuzcoizu  odhvoidu  coiuoiu o'
    fill_in 'Rating', :with => 5
    click_on 'Create Review'
    expect(page).to have_content 'user1'
  end

  it "gives error when no name is entered" do
    visit product_path(prod1)
    click_link 'Add new review'
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end

end
