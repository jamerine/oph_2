class Product < ApplicationRecord
  enum product_type: [:crepes, :egg_specialties, :kids, :omelettes, :pancakes, :specialties, :waffles]

  # validations
  validates_presence_of :name
  validates_presence_of :price
  validates_presence_of :short_description
  validates_presence_of :long_description
end
