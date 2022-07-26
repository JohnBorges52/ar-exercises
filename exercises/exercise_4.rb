require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...


surrey = Store.create(id: 3, name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true, created_at: nil, updated_at: nil )
whistler = Store.create(id: 4, name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false, created_at: nil, updated_at: nil )
yaletown = Store.create(id: 5, name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true, created_at: nil, updated_at: nil )

@men_stores = Store.where(mens_apparel: true)

for store in @men_stores
  puts store.name
  puts store.annual_revenue 
end

@womens_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000")

for store in @womens_stores
  puts store.name
  puts store.annual_revenue 
end

