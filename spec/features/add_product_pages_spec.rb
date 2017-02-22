require 'rails_helper'

describe "the add a product process" do
  it "adds a new gummy bear product" do
    visit products_path
    click_link 'Add Product'
    fill_in 'Name', :with => "Getron"
    fill_in 'Cost', :with => "45"
    fill_in 'Origin', :with => "PDX"
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added!'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end

end
