# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
  hash = Hash.new(0)
  string.chars { |char| hash[char] += 1 }
  hash.count {|_, v| v > 1}
end

# Another way:

def num_repeats(string)
  arr = string.chars.select { |char| char =~ /[a-zA-Z]/ }
  count = 0
  arr.uniq.each { |chr| count += 1 if arr.count(chr) > 1 }
  count
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)

p num_repeats('aaa')
p num_repeats('cadac')
