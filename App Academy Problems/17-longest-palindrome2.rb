=begin
# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.

'abcbd' => 'ab', abc, abcb, abcbd   string[0, 1], string[0, 2], etc
'bcbd' =>  'b', bc, bcb, bcbd       string[1, 1], string[1, 2], etc until length reaches string.length



=end

def substrings(string)
  substring_arr = []
  length = 1
  loop do
    substring_arr << string[0, length]
    length += 1
    break if length > string.length
  end
  substring_arr
end

def all_substrings(string)
  all_substrings = []
  0.upto(string.length - 1) do |i|
    all_substrings << substrings(string[i..-1])
  end
  all_substrings.flatten
end

def is_palindrome?(string)
  string == string.reverse
end

def all_palindromes(string)
  arr = []
  all_substrings(string).each do |sub_str|
    arr << sub_str if is_palindrome?(sub_str)
  end
  arr
end

def longest_palindrome(string)
  all_palindromes(string).inject do |memo, word|
    memo.length > word.length ? memo : word
  end
end

p longest_palindrome('abcbd') == 'bcb'

p longest_palindrome('abba') == 'abba'

p longest_palindrome('abcbdeffe') == 'effe'
