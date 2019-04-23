=begin
Edge Cases to consider:
- empty string: penultimate('')
- one word: penultimate('hello')
- word with even number of elements: penultimate("hello there")
  - which one to return? what is middle here? (we'll go with first element)
=end

def penultimate(string)
  return '' if string.empty?
  arr = string.split(' ')
  middle = (arr.size / 2.0).ceil - 1
  arr[middle]
end

p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'School'
p penultimate('')
p penultimate('Hello')
p penultimate('lost world heaven')
