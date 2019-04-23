# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  arr = num.to_s.split('').join('-').split
  arr.each_index do |idx|
    arr.delete_at(idx) if arr[idx] == '-' && arr[idx - 1].even? && arr[idx + 1].even?
  end
  arr.join
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)

# Another solution:

def dasherize_number(num)
  str = num.to_s
  arr = str.chars
  
  dashed = arr.map.with_index do |char, idx|
    if char.to_i.odd? 
      if idx == 0
      "#{char}-"
      elsif idx == (arr.size - 1)
      "-#{char}"
      else
        "-#{char}-"
      end
    else
      char
    end
  end
 dashed.join.gsub('--', '-')
end
