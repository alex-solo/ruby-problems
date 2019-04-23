# LS student solution:

def reverse(array)
  new_arr = []
  array.each_index do |idx|
    new_arr << array[array.size - 1 - idx]
  end
  new_arr
end

p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
p reverse(%w(a b c d e)) #== %w(e d c b a)  # => true
p reverse(['abc']) #== ['abc']              # => true
p reverse([]) #== []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list #== [1, 2, 3]                     # => true
p new_list #== [3, 2, 1]                 # => true
p "----------------"
# Using Inject

def reverse2(array)
  array.inject([]) do |arr, el|
    arr.unshift(el)
  end
end

p reverse2([1,2,3,4]) #== [4,3,2,1]          # => true
p reverse2(%w(a b c d e)) #== %w(e d c b a)  # => true
p reverse2(['abc']) #== ['abc']              # => true
p reverse2([]) #== []                        # => true

list2 = [1, 2, 3]                      # => [1, 2, 3]
new_list2 = reverse2(list2)              # => [3, 2, 1]
p list2.object_id != new_list2.object_id  # => true
p list2 #== [1, 2, 3]                     # => true
p new_list2 #== [3, 2, 1]                 # => true
