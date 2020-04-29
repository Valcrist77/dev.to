FactoryBot.define do
  sequence(:name) { |n| "tag#{n}" }

  factory :tag do
    name { generate :name }
    supported { true }

    trait :search_indexed do
      after(:create, &:index_inline)
    end
  end
end
