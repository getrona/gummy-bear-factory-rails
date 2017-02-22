class Product < ApplicationRecord
  validates :name, :cost, :origin, :presence => true
end
