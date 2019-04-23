def display(num)
  numbers = ['1st', '2nd', '3rd', '4th', '5th', 'last']
  puts "Please enter the #{numbers[num - 1]} number"
end

display(1)
first_number = gets.chomp.to_i

display(2)
second_number = gets.chomp.to_i

display(3)
third_number = gets.chomp.to_i

display(4)
fourth_number = gets.chomp.to_i

display(5)
fifth_number = gets.chomp.to_i

display(6)
last_number = gets.chomp.to_i

array = [first_number, second_number, third_number, fourth_number, fifth_number]

if array.include?(last_number)
  puts "#{last_number} appears in #{array.inspect}."
else
  puts "#{last_number} does not appear in #{array.inspect}."
end