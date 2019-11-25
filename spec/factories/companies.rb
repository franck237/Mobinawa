FactoryBot.define do
  factory :company do
    number { "MyString" }
    name { "MyString" }
    email { "MyString" }
    website { "MyString" }
    logo { "MyString" }
    description { "MyText" }
    date { "2019-11-25 12:03:15" }
    status { 1 }
    sub_sector { nil }
    admin { nil }
    country { nil }
  end
end
