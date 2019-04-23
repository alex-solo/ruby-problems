# Based on the information given above, write a method that takes an array as an argument. 
# In that method, yield the contents of the array to a block. In the block, write your block 
# variables in such a way that the first two items are discarded, and the last two items are treated as birds of prey.

def types(array)
  yield(array)
end

arr = %w(raven finch hawk eagle)

types(arr) do |_, _, *birds_of_prey|
  puts "Two birds of prey are the #{birds_of_prey.join(" and ")}."
end
