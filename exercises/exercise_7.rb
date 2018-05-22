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
class Store < ActiveRecord::Base
  has_many :employees
end

class Employeee < ActiveRecord::Base
  belongs_to :store
end
