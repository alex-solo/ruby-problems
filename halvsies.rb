def halvsies(array)
  first_half  = []
  second_half = []
  
  array.each_index do |idx|
    if idx <= (array.size - 1) / 2
      first_half << array[idx]
    else
      second_half << array[idx]
    end
  end

[first_half, second_half]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]
p '--------------------'

# LS Solution

def halvsies2(array)
  delim = (array.size / 2.0).ceil
  first_half = array.slice(0, delim)
  second_half = array.slice(delim, array.size)
  [first_half, second_half]
end

p halvsies2([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies2([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies2([5]) #== [[5], []]
p halvsies2([]) #== [[], []]
