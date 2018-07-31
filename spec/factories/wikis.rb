FactoryBot.define do
  factory :wiki do
    title Faker::BojackHorseman.unique.character
    body Faker::BojackHorseman.unique.quote
    private false
    user nil
  end
end
