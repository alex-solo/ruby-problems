def rotate(string)
  return '' if string.empty?
  arr = string.chars
  new_str = arr[1..-1] + [arr[0]]
  new_str.join
end

p rotate('hello') # => 'elloh'
p rotate('') # => ''
p rotate("I'm listening") # => "'m listeningI"
p rotate('xoxo')

def rotate_int(num)
  arr = num.to_s.split('')
  new_str = arr[1..-1] + [arr[0]]
  new_str.join.to_i
end

p rotate_int(123) # => 231
p rotate_int(893120) # => 931208
p rotate_int(9020) # => 209
