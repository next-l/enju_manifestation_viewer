FactoryBot.define do
  factory :bookstore do
    sequence(:name){|n| "bookstore_#{n}"}
  end
end
