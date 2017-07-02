require 'rails_helper'

describe "the edit a product process" do
  let(:prod1){
    Product.create(
    name: "name1",
    description: "desc1",
    image: "img1",
    origin: "origin1",
    cost: 1,
    )
  }

  it "edits existing product" do
    visit edit_product_path(prod1)
    fill_in 'Name', :with => 'name1!!'
    click_on 'Update Product'
    expect(page).to have_content 'name1!!'
  end

  it "gives error when no name is entered" do
    visit edit_product_path(prod1)
    fill_in 'Name', :with => ''
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end

end
