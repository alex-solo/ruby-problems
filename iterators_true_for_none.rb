def any?(collection)
  return false if collection.empty?
  collection.each { |args| return true if yield(args) }
  false
end

def none?(array)
  array.each do |num|
    return false if yield(num)
  end
  true
end

p none?([1, 3, 5, 6]) { |value| value.even? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| true } == true
p '--------'

def none2?(array, &block)
  !any?(array, &block)
end

p none2?([1, 3, 5, 6]) { |value| value.even? } == false
p none2?([1, 3, 5, 7]) { |value| value.even? } == true
p none2?([2, 4, 6, 8]) { |value| value.odd? } == true
p none2?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none2?([1, 3, 5, 7]) { |value| true } == false
p none2?([1, 3, 5, 7]) { |value| false } == true
p none2?([]) { |value| true } == true
