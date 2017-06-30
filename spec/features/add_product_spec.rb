require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Spaghetti'
    fill_in 'Description', :with => 'Saucy noodleage made to be twirled about on a fork'
    fill_in 'Image', :with => 'spaghet'
    fill_in 'Origin', :with => 'Italy'
    fill_in 'Cost', :with => 5
    click_on 'Create Product'
    expect(page).to have_content 'Spaghetti'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
