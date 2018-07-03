FactoryBot.define do
  factory :log do
    action "Create a new material"
    association :material, factory: :material
  end
end
