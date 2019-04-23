def sum(num)
  total = 0
  num_arr = num.to_s.split(//)
  until num_arr.empty?
    integer = num_arr.pop.to_i
    total += integer
  end
  total
end  

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Further Exploration (without using loops)

def sum2(num)
  arr = num.rectangular
  numbers = arr.first.to_s.split(//)
  numbers.map(&:to_i).inject(:+)
end

puts '----------'
puts sum2(23) == 5
puts sum2(496) == 19
puts sum2(123_456_789) == 45

# Recursive solution from a LS student

def sum3(integer)
  if integer < 10
    integer % 10
  else
    integer % 10 + sum(integer / 10)
  end
end