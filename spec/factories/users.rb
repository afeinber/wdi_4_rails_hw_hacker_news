# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    # username { Faker::Name.first_name }
    password { Faker::Internet.password }
    email { Faker::Internet.email }
    username { Faker::Internet.user_name }
  end

  factory :article do
    url { Faker::Internet.url }
    title { Faker::Lorem.sentence }
    user
  end

  factory :comment do
    content { Faker::Lorem.sentence }
    user
    article
  end
end
