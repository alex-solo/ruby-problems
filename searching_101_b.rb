numbers = ['1st', '2nd', '3rd', '4th', '5th', 'last']
array = []
numbers.each do |num|
  puts "Please enter the #{num} number:"
  array << gets.chomp.to_i
end

last = array.pop
inclusion = array.include?(last) ? "is included in" : "is NOT included in"

puts "#{last} #{inclusion} #{array}"