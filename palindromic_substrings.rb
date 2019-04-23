def substrings_at_start(string)
  new_arr = []
  string.length.times do |idx|
    new_arr << string[0..idx]
  end
  new_arr
end

def substrings(string)
  results = []
  string.length.times do |starting_idx|
    results.concat(substrings_at_start(string[starting_idx..-1]))
  end
  results
end

def palindromes(string)
  substrings(string).select do |substr|
    substr.length > 1 && substr == substr.reverse
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
