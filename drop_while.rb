# iterate through collection
# keep track of index
#   - what is the idx of element that returns false
# method should return array of array[idx] to the end of the array

def drop_while(arr)
  arr.each_with_index do |num, idx|
    return arr[idx..-1] unless yield(num)
  end
  []
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } #== [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } #== [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } #== []
p drop_while([1, 3, 5, 6]) { |value| false } #== [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } #== [5, 6]
p drop_while([]) { |value| true } #== []
p '-----'

# LS Solution:

def drop_while2(array)
  idx = 0
  while idx < array.size && yield(array[idx])
    idx += 1
  end
  array[idx..-1]
end

p drop_while2([1, 3, 5, 6]) { |value| value.odd? } #== [6]
p drop_while2([1, 3, 5, 6]) { |value| value.even? } #== [1, 3, 5, 6]
p drop_while2([1, 3, 5, 6]) { |value| true } #== []
p drop_while2([1, 3, 5, 6]) { |value| false } #== [1, 3, 5, 6]
p drop_while2([1, 3, 5, 6]) { |value| value < 5 } #== [5, 6]
p drop_while2([]) { |value| true } #== []

def drop_while3(arr)
  false_idx = arr.index { |num| !yield(num)}
  false_idx ? arr[false_idx..-1] : []
end

p drop_while3([1, 3, 5, 6]) { |value| value.odd? } #== [6]
p drop_while3([1, 3, 5, 6]) { |value| value.even? } #== [1, 3, 5, 6]
p drop_while3([1, 3, 5, 6]) { |value| true } #== []
p drop_while3([1, 3, 5, 6]) { |value| false } #== [1, 3, 5, 6]
p drop_while3([1, 3, 5, 6]) { |value| value < 5 } #== [5, 6]
p drop_while3([]) { |value| true } #== []
