require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
storeone = Store.create
storeone.name = "Burnaby"
storeone.annual_revenue = 300000
storeone.mens_apparel = true
storeone.womens_apparel= true
storeone.save

storetwo = Store.create
storetwo.name = "Richmond"
storetwo.annual_revenue = 1260000
storetwo.mens_apparel = false
storetwo.womens_apparel= true
storetwo.save

storethree = Store.create
storethree.name = "Gastown"
storethree.annual_revenue = 190000
storethree.mens_apparel = true
storethree.womens_apparel= false
storethree.save

puts Store.count
