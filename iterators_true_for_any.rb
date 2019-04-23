# iterate through array and yield each element to the block
# return true if yield(element) evaluates to true.

def any?(collection)
  return false if collection.empty?
  collection.each { |args| return true if yield(args) }
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false

p any?({a: 1, b: 2, c: 3, d: 4, e: 5}) { |k, v| k == 'f'.to_sym }
