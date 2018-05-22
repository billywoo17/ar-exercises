require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employeee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bill", last_name: "Wu", hourly_rate: 80)
@store1.employees.create(first_name: "Sam", last_name: "Kim", hourly_rate: 80)

@store2.employees.create(first_name: "Mel", last_name: "Chua", hourly_rate: 79)
@store2.employees.create(first_name: "Karl", last_name: "Jensen", hourly_rate: 999)
@store2.employees.create(first_name: "Jeremy", last_name: "Holman", hourly_rate: 999)
