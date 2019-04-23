def compute(object)
  block_given? ? yield(object) : object
end

p compute(4) { |n| n + 3 } == 7
p compute('a') { |letter| letter + 'b' } == 'ab'
p compute(4) == 4
