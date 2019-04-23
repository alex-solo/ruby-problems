
def quicksort(arr)

return arr if arr.length <= 1

pivot = arr.pop

less = arr.select {|x| x < pivot}
more = arr.select {|x| x >= pivot}

quicksort(less) + [pivot] + quicksort(more)
end

puts quicksort([1, 65, 3, 54, 33, 8, 9])

