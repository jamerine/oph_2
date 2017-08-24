require 'rails_helper'

RSpec.describe Product, type: :model do

  # Association tests


  # Validation tests
  # ensure columns are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:short_description) }
  it { should validate_presence_of(:long_description) }






end
