# create empty result array
# idx = 0
# create 2 element array with elements at idx = 0
# push array to result array
# increment idx and do same until idx == arr1.size

def zip(arr1, arr2)
  result = []
  idx = 0
  loop do
    result << [arr1[idx], arr2[idx]]
    idx += 1
    break if idx == arr1.size
  end
  result
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
p '---'

# LS Solution:

def zip2(arr1, arr2)
  arr1.each_with_index.with_object([]) do |(element, index), result|
    result << [element, arr2[index]]
  end
end

p zip2([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
