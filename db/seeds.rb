require 'faker' 

puts "=========== Seeding Users ==========="
10.times do 
  User.create(
    email: Faker::Internet.email,
    username:  Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: 123456,
    password_confirmation: 123456
  )
end
puts "=========== Seeding Done ============"