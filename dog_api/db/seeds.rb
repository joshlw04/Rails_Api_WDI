

# 20.times do
#   Owner.create({
#     name: FFaker::Name.name,
#     age: Random.new.rand(10..80)
#   })
# end
#
# 5.times do
#   Dogpark.create({
#     location: FFaker::Address.neighborhood
#   })
# end
#
100.times do
  Visit.create({
    owner_id: Random.new.rand(1..20),
    dog_id: Random.new.rand(1..50),
    dogpark_id: Random.new.rand(1..5)
  })
end
