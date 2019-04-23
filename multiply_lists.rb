def multiply_list(arr1, arr2)
  new_arr = []
  idx = 0
  
  loop do
    new_arr << arr1[idx] * arr2[idx]
    idx += 1
    break if idx == arr1.size
  end
  
  new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]

def multiply_list2(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.inject(:*) }
end

p multiply_list2([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
