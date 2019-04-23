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

VOWELS = %w(a e i o u)

def remove_vowels(array)
  array.map do |element|
    element.chars.select { |char| !VOWELS.include?(char.downcase) }.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']
