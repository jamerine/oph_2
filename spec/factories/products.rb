FactoryGirl.define do
  factory :product do
    name { Faker::Lorem.word }
    price { Faker::Number.decimal(2) }
    short_description { Faker::Lorem.sentence }
    long_description { Faker::Lorem.paragraph }
    product_type { Faker::Number.between(0, 6) }

  end

end
