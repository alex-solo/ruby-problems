=begin
Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

Understand the problem:
- input: an array of strings with letters big and small
- output: same array with vowels removed

Algorithm:
- returned array has same # of elements as original with elements modified. We can use map method
  to transform each element
  - nested select method on element chars to include only non-vowels
=end

def remove_vowels(array)
  array.map { |string| string.gsub(/[aeiou]/i, '') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']
