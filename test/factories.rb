FactoryBot.define do
  factory :interest do
    side { "MyString" }
    share_type { "MyString" }
    shares_min { 1 }
    shares_max { 1 }
    price_per_share { 1.5 }
    user { nil }
    company { nil }
  end

  factory :user do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    email { Faker::Internet.email }
    password { email }
    phone { Faker::PhoneNumber.cell_phone }
    role { "User" }
  end

  factory :company do
    name { Faker::Company.name }
    category { Faker::Company.industry }
    url { "https://#{Faker::Internet.domain_name}" }
    logo_url { Faker::Company.logo }
    details { Faker::Company.catch_phrase }
    founded { Date.today - 2.years - rand(10).months }
    funding_amount { rand(1..20) }
    funding_unit { "Million" }
  end
end
