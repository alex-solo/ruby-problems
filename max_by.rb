# iterate with each with object
# append result of block to object (result array)
# return arr.max

def max_by(array)
  return nil if array.empty?
  result = []
  array.each { |num| result << yield(num) }
  array.fetch(result.index(result.max))
end

p max_by([1, 5, 3]) { |value| value + 2 } #== 5
p max_by([1, 5, 3]) { |value| 9 - value } #== 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } #== 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } #== [3, 4, 5]
p max_by([-7]) { |value| value * 3 } #== -7
p max_by([]) { |value| value + 5 } #== nil
p '-----'

def max_by2(array)
  result = array.each_with_object([]) { |element, obj| obj << yield(element) }
  array.empty? ? nil : array[result.index(result.max)]
end

p max_by2([1, 5, 3]) { |value| value + 2 } #== 5
p max_by2([1, 5, 3]) { |value| 9 - value } #== 1
p max_by2([1, 5, 3]) { |value| (96 - value).chr } #== 1
p max_by2([[1, 2], [3, 4, 5], [6]]) { |value| value.size } #== [3, 4, 5]
p max_by2([-7]) { |value| value * 3 } #== -7
p max_by2([]) { |value| value + 5 } #== nil
