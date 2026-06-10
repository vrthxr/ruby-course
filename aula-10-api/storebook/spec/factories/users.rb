FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@test.com"}
    password {'123456'}
    
    trait :admin do
      admin {true}
    end
  end
end