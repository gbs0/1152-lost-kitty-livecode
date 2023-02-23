require 'faker'
 
Pet.destroy_all
puts "All Animals destroyed"

10.times do
  specie = Pet::SPECIES.sample
  Pet.create(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    species: specie,
    photo: "https://loremflickr.com/320/240/#{specie}"
  )
  puts "Created #{specie} animal"
end
