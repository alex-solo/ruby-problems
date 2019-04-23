=begin
Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed in to this method. The return value should be the same Array object.
You may not use Array#reverse or Array#reverse!.

- input: array of elements
- output: same array with elements indices reverses ie. first becomes last

=end

def reverse(array)
  idx = array.size - 1
  array.each_with_object([]) do |_, arr2|
    arr2 << array[idx]
    idx -= 1
  end
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
