FactoryBot.define do
  factory :interest do
    side { Interest::SIDES[rand(2)] }
    share_type { Interest::TYPES[rand(2)] }
    shares_min { rand(10) * 10 }
    shares_max { (rand(100) + 10) * 10 }
    price_per_share { rand(100) + rand(200) }
    user { User.all.shuffle[0] }
    company { Company.all.shuffle[0] }
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
