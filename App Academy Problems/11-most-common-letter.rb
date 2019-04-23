# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  hash = Hash.new(0)
  string.chars do |char|
    hash[char] += 1
  end
  arr = hash.to_a.sort_by do |sub_arr|
     sub_arr[1] 
  end
  arr.last
end

# another solution:

def most_common_letter(string)
  hash = Hash.new(0)
  arr = string.chars.uniq
  arr.delete(' ')
  arr.each do |char|
    hash[char] = string.count(char)
  end
  return hash.key(hash.values.max), hash.values.max
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)

p most_common_letter("abbab")

# create array of uniq values
# create an empty array to store the counts of every letter
# iterate through unique array while populating the empty arr with count values
# zip uniq and count arrays
# sort and display last 

def most_common_letter2(string)
  unique = string.chars.uniq
  count = []
  unique.each do |char|
    count << string.chars.count(char)
  end
  unique.zip(count).sort_by {|sub| sub[1]}.last
end

p most_common_letter2("apples")
