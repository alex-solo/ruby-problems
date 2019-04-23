def substrings_at_start(string)
  new_arr = []
  string.length.times do |idx|
    new_arr << string[0..idx]
  end
  new_arr
end

def substrings(string)
  results = []
  #string = string.delete('^a-zA-Z')
  string.length.times do |starting_idx|
    results.concat(substrings_at_start(string[starting_idx..-1]))
  end
  results
end

def palindromes(string)
  substrings(string).select do |substr|
    substr = substr.downcase.delete('^a-zA-Z0-9')
    substr.length > 1 && substr == substr.reverse
  end
end

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-Did-madam-goodbye')
p palindromes('knitting cassettes')
p palindromes("Abc-bA")
