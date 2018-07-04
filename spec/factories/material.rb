FactoryBot.define do
  factory :material do
    name "lapis"
    quantify  5
    association :users_id, factory: :user
  end
end
