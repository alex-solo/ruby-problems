=begin
-input: string
-output: an array of strings 
  - # elements = string.size

Algorithm:
  - create a simple loop
  - increase an index variable by one each time
    - string[0..0]
    - string[0..1]
    - string[0..2]
    - ... until string.length - 1
    
=end

def substrings_at_start(string)
  substr_arr = []
  idx = 0
  
  loop do
    substr_arr << string[0..idx]
    idx += 1
    break if idx == string.length
  end
  substr_arr
end

p substrings_at_start('abc') #== ['a', 'ab', 'abc']
p substrings_at_start('a') #== ['a']
p substrings_at_start('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
p '------------'

def substrings_at_start2(string)
  new_arr = []
  string.length.times do |idx|
    new_arr << string[0..idx]
  end
  new_arr
end

p substrings_at_start2('abc') #== ['a', 'ab', 'abc']
p substrings_at_start2('a') #== ['a']
p substrings_at_start2('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
