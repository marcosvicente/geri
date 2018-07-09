FactoryBot.define do
  factory :material do
    name Faker::ElectricalComponents.active
    quantify  Faker::Number.number(5)
  end
end
