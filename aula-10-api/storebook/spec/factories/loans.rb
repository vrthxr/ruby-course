FactoryBot.define do
  factory :loan do
    book { nil }
    user { nil }
    status { "MyString" }
    due_on { "2026-06-12" }
  end
end
