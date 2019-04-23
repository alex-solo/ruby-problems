def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']

# Manual way:

def interleave2(arr1, arr2)
  new_arr = []
  idx = 0
  
  loop do
    new_arr << arr1[idx] << arr2[idx]
    idx += 1
    break if idx == arr1.size
  end
  new_arr
end

p interleave2([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']

def interleave3(arr1, arr2)
  result = []
  arr1.each_with_index do |el, idx|
    result << el << arr2[idx]
  end
  result
end

p interleave3([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']

def interleave4(arr1, arr2)
  result = []
  result << arr1 << arr2
  result.transpose.flatten
end

p interleave4([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']
