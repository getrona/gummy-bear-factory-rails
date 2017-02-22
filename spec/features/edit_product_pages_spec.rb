require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    product = Product.create(:name => "Getro", :cost => "45", :origin => "portland")
    visit products_path
    click_on 'Edit'
    fill_in "Cost", :with => "0"
    click_on 'Update Product'
    expect(page).to have_content "0"
  end

  it "gives error when no name is entered" do
    product = Product.create(:name => 'Getro', :cost => "45", :origin => "portland")
    visit products_path
    click_on 'Edit'
    fill_in 'Name', :with => ''
    click_button 'Update Product'
    expect(page).to have_content 'errors'
  end
end
