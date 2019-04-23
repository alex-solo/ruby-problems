=begin
  - string.length == 5
  - arrary.size == 15
  - ...
  - string.length == 3
  - array.size == 6
=end

def substrings_at_start(string)
  new_arr = []
  string.length.times do |idx|
    new_arr << string[0..idx]
  end
  new_arr
end

def substrings(string)
    new_arr = []
    loop do
      new_arr << substrings_at_start(string)
      string = string[1..-1]
      break if string.empty?
    end
    new_arr.flatten
end

p substrings('abcde')
p '------------------'

def substrings2(string)
  results = []
  string.length.times do |starting_idx|
    results.concat(substrings_at_start(string[starting_idx..-1]))
  end
  results
end

p substrings2('abcde')
