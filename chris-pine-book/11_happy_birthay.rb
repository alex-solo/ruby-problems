

puts "What year were you born?"
year = gets.chomp.to_i

puts "What month were you born?"
month = gets.chomp.to_i

puts "What day were you born?"
day = gets.chomp.to_i

bday = Time.local(year, month, day)

age = (Time.new - bday)/60/60/24/365

puts "You are #{age.to_i} years old!"
puts "SPANK\n" * age