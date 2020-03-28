FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "TEST#{n}@example.com"}
    sequence(:password) { "password" }
    sequence(:password_confirmation) { "password" }
  end
end