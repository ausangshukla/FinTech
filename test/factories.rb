FactoryBot.define do
    factory :user do
      first_name { Faker::Name.first_name }
      last_name  { Faker::Name.last_name }
      email { Faker::Internet.email }
      password { email }
      phone {Faker::PhoneNumber.cell_phone}
      role {"User"}
    end

    factory :company do
      name { Faker::Company.name }
      category  { Faker::Company.industry }
      url { Faker::Internet.domain_name }
      details { Faker::Company.catch_phrase }
      founded { Date.today - 2.years - rand(10).months }
      funding_amount { rand(20) + 1 }
      funding_unit { "Million" }
    end

end