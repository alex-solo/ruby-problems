def include?(array, num)
  array.each { |int| return true if int == num }
  false
end

p include?([1,2,3,4,5], 3) #== true
p include?([1,2,3,4,5], 6) #== false
p include?([], 3) #== false
p include?([nil], nil) #== true
p include?([], nil) #== false
p '--------'

# LS Solution:

def include2?(array, num)
  !!array.find_index(num)
end

p include2?([1,2,3,4,5], 3) #== true
p include2?([1,2,3,4,5], 6) #== false
p include2?([], 3) #== false
p include2?([nil], nil) #== true
p include2?([], nil) #== false
p '----------'

# Further Exploration:

def include3?(array, num)
  array.push(num).count(num) > 1  # OR simply array.count(num) > 0
end

p include3?([1,2,3,4,5], 3) #== true
p include3?([1,2,3,4,5], 6) #== false
p include3?([], 3) #== false
p include3?([nil], nil) #== true
p include3?([], nil) #== false
p '----------'

def include4?(array, num)
  array.any? {|val| val == num}
end

p include4?([1,2,3,4,5], 3) #== true
p include4?([1,2,3,4,5], 6) #== false
p include4?([], 3) #== false
p include4?([nil], nil) #== true
p include4?([], nil) #== false
