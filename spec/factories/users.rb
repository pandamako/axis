FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@gmail.com" }
    password '123456'

    trait :admin do
      role 'admin'
    end
  end
end
