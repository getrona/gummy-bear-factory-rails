require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe Product do
  it { should validate_presence_of :name }
end
