require 'rails_helper'

describe "the delete a product process" do
  let(:prod1){
    Product.create(
    name: "name1",
    description: "desc1",
    image: "img1",
    origin: "origin1",
    cost: 1,
    )
  }

  it "deletes a product" do
    visit product_path(prod1)
    click_link 'Delete Product'
    expect(page).to have_content('Your product has been deleted')
    expect(page).to have_no_content(prod1.name)
  end

end
