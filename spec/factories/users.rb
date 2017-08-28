FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password "foobaring"
    password_confirmation "foobaring"
    role { Faker::Number.between(0, 1) }
  end

end
