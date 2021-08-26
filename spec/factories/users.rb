FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internent.unique.email }
    password_digest { "password" }
  end
end
