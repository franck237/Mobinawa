FactoryBot.define do
  factory :company do
    number { Faker::PhoneNumber.phone_number_with_country_code }
    name { Faker::Company.name }
    description { "Les dieux du Football" }
    status { 1 }
    sub_sector { FactoryBot.create(:sub_sector) }
    admin { FactoryBot.create(:admin) }
    country { FactoryBot.create(:country) }
  end
end
