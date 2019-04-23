# Write a method that takes in a number and returns true if it is a
# power of 2. Otherwise, return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
#
# Difficulty: medium.

def is_power_of_two?(num)
  (1..num).any? {|x| x ** 2 == num}
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('is_power_of_two?(1) == true: ' + (is_power_of_two?(1) == true).to_s)
puts('is_power_of_two?(16) == true: ' + (is_power_of_two?(16) == true).to_s)
puts('is_power_of_two?(64) == true: ' + (is_power_of_two?(64) == true).to_s)
puts('is_power_of_two?(78) == false: ' + (is_power_of_two?(78) == false).to_s)
puts('is_power_of_two?(0) == false: ' + (is_power_of_two?(0) == false).to_s)
p '-------'

def is_power_of_two2?(num)
  return false if num.zero?
  result = Math.sqrt(num)
  result == result.to_i
end

# another solution:

def is_power_of_two(num)
  (1..num).each do |n|
    return true if n ** 2 == num
  end
  false
end
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('is_power_of_two?(1) == true: ' + (is_power_of_two2?(1) == true).to_s)
puts('is_power_of_two?(16) == true: ' + (is_power_of_two2?(16) == true).to_s)
puts('is_power_of_two?(64) == true: ' + (is_power_of_two2?(64) == true).to_s)
puts('is_power_of_two?(78) == false: ' + (is_power_of_two2?(78) == false).to_s)
puts('is_power_of_two?(0) == false: ' + (is_power_of_two2?(0) == false).to_s)
