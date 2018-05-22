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
@answer = gets.chomp.to_i

@store7 = Store.create(name: @answer)
store = Store.new
store.valid?
puts store.errors.details[:name]
puts store.errors.details[:annual_revenue]
puts store.errors.details[:apparel]
