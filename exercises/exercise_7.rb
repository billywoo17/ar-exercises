require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Enter a store name"
@storeName = gets.chomp

@store7 = Store.create(name: @storeName, annual_revenue: 300000, mens_apparel: false, womens_apparel: false)
puts @store7.errors.full_messages
