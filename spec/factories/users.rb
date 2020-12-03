FactoryBot.define do
  factory :user do
    email                 {Faker::Internet.free_email}
    password              {'1a1a1a'}
    password_confirmation {password}
  end
end