FactoryGirl.define do
  factory :product do
    name { Faker::Commerce.product_name }
    price { Faker::Commerce.price }
    demand { Faker::Number.between(5, 100) }
  end
end