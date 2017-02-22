require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product from the list" do
    product = Product.create(:name => "Getro", :cost => "32", :origin => "Portland")
    visit product_path(product)
    click_on "Delete"
    expect(Product.all).to eq([])
  end
end
