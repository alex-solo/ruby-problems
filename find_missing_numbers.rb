# create 'full' array with every integer 
# compare that array with array provided as argument  
#   - have empty results array
#   - << element if element in full array is NOT included in provided array
# return results array

def missing(array)
  result = []
  full = (array.first..array.last).to_a
  full.each do |num|
    result << num if !array.include?(num)
  end
  result
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
p '--------'

def missing2(array)
  (array.first..array.last).to_a - array
end

p missing2([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing2([1, 2, 3, 4]) == []
p missing2([1, 5]) == [2, 3, 4]
p missing2([6]) == []
p '--------'

# LS solution:

def missing3(array)
  result = []
  array.each_cons(2) do |first, second|
    result.concat((first + 1..second - 1).to_a)
  end
  result
end

p missing3([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing3([1, 2, 3, 4]) == []
p missing3([1, 5]) == [2, 3, 4]
p missing3([6]) == []
p '--------'
