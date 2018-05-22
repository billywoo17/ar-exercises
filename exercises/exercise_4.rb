require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
@store4 = Store.create
@store4.name = "Surrey"
@store4.annual_revenue = 224000
@store4.mens_apparel = false
@store4.womens_apparel= true
@store4.save

@store5 = Store.create
@store5.name = "Whistler"
@store5.annual_revenue = 1900000
@store5.mens_apparel = true
@store5.womens_apparel= false
@store5.save

@store6 = Store.create
@store6.name = "Yaletown"
@store6.annual_revenue = 430000
@store6.mens_apparel = true
@store6.womens_apparel= true
@store6.save

 @mens_stores = Store.where(mens_apparel: true)

 @mens_stores.each do |stores|
   puts "#{stores.name} #{stores.annual_revenue}"
 end

 @womens_stores = Store.where(womens_apparel: true)


 @womens_stores.each do |stores|
   if stores.annual_revenue < 1000000
     puts "#{stores.name} #{stores.annual_revenue}"
   end
 end
