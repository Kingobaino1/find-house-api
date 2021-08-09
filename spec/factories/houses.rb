FactoryBot.define do
  factory :house do
    price { 1.5 }
    details { "MyText" }
    about { "MyString" }
    image { "MyString" }
    owner { "MyString" }
  end
end
