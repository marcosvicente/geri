require 'faker'

user = User.create(email: 'marcosvicentesiqueira@gmail.com', password: 'initial123')
if user.save!
  puts "User marcosvicentesiqueira@gmail.com can be create"
end

material = Material.create(name: Faker::ElectricalComponents.active, quantify: Faker::Number.number(5) )
if material.save!
  puts "Material can be create"
end
