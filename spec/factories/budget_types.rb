FactoryBot.define do
  factory :budget_type do
    sequence(:name){|n| "budget_type_#{n}"}
  end
end
