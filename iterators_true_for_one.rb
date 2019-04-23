# map through each element according to the provided block_given
# return true if array.count(true) == 1, false otherwise
# looks at every element in the array

def one?(array)
  array.map { |num| yield(num) }.count(true) == 1
end

p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |value| true }           # -> false
p one?([1, 3, 5, 7]) { |value| false }          # -> false
p one?([]) { |value| true }                     # -> false
p '-------'

# iterates only until second true is found

def one2?(array)
  true_count = 0
  answer = true
  array.each do |num|
    true_count += 1 if yield(num)
    answer = false if true_count > 1
    break if !answer
  end
  true_count == 1
end

p one2?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one2?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one2?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one2?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one2?([1, 3, 5, 7]) { |value| true }           # -> false
p one2?([1, 3, 5, 7]) { |value| false }          # -> false
p one2?([]) { |value| true }                     # -> false
p '------'

#LS Solution:

def one3?(array)
  seen_one = false
  array.each do |num|
    next if !yield(num)
    return false if seen_one
    seen_one = true
  end
  seen_one
end

p one3?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one3?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one3?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one3?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one3?([1, 3, 5, 7]) { |value| true }           # -> false
p one3?([1, 3, 5, 7]) { |value| false }          # -> false
p one3?([]) { |value| true }                     # -> false
