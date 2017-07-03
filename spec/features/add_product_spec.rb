require 'rails_helper'

describe "the add a product process" do


  it "adds a new product" do
    visit root_path
    click_link("Sign up")
    fill_in "user_email", with: "christ@god.com"
    fill_in("user_password", with: "123456")
    fill_in("user_password_confirmation", with: "123456")
    click_button("Sign Up")
    expect(page).to have_content("You've successfully signed up!")
    visit products_path
    click_link 'Add a new Product'
    fill_in 'product_name', :with => 'Spaghetti'
    fill_in 'Description', :with => 'Saucy noodleage made to be twirled about on a fork'
    fill_in 'Image', :with => 'spaghet'
    fill_in 'Origin', :with => 'Italy'
    fill_in 'Cost', :with => 5
    click_on 'Create Product'
    expect(page).to have_content 'Spaghetti'
  end

  it "gives error when no name is entered" do
    visit root_path
    click_link("Sign up")
    fill_in "user_email", with: "christ@god.com"
    fill_in("user_password", with: "123456")
    fill_in("user_password_confirmation", with: "123456")
    click_button("Sign Up")
    expect(page).to have_content("You've successfully signed up!")
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
