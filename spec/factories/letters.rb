FactoryBot.define do
  factory :letter do
    text { Faker::Lorem.sentence }
    association :user
  end
end
