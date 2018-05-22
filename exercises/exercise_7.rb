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
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality:{greater_than:0}
end

class Employeee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {less_than: 200, greater_than:40}
  validates_associated :store
end

puts "Enter a store name"
@answer = gets.chomp.to_i

@store7 = Store.create(name: @answer)
store = Store.new
store.valid?
puts store.errors.details[:name]
puts store.errors.details[:length]
puts store.errors.details[:annual_revenue]
