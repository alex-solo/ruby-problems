SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTIMETERS = 929.03

puts "Please enter the width of the room (ft)."
width = gets.chomp.to_f

puts "Please enter the length of the room (ft)."
length = gets.chomp.to_f

area_feet = width * length.round(2)
area_inches = area_feet * SQFEET_TO_SQINCHES.round(2)
area_cm = (area_feet * SQFEET_TO_SQCENTIMETERS).round(2)

puts "The result is: #{area_feet} sq.ft or #{area_inches} sq.in or #{area_cm} sq. cm"
