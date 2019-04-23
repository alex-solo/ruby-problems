=begin
Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed in to this method. The return value should be the same Array object.
You may not use Array#reverse or Array#reverse!.

- input: array of elements
- output: same array with elements indices reverses ie. first becomes last

Algorithm:

- create empty array
- iterate through given array populating a new array with pop'ped elements of the given array
- iterate through new array populating the first empty array
=end

def reverse!(array)
  left_index = 0
  right_index = -1
  
  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end
  array
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
p result 

p list == [4, 3, 2, 1]
#list.object_id == result.object_id

list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
p reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!([]) # => []
p list == []
