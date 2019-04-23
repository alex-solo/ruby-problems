
puts "Please enter name"

input = gets.chomp

input.empty? ? name = 'Teddy' : name = input


puts "#{name} is #{rand(20..200)} years old!"

