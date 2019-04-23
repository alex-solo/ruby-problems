=begin
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:
zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Understand the problem:
- input: array of numbers betwee 0 and 19
- output: array with those same 19 numbers but sorted based on their english words 

Data Structure:
- an array or hash can store words as a sort of look up table for english words
  
Algorithm:
- 
=end

WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen, fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(array)
  english_words = array.each_with_index.map {|num, idx| WORDS[idx] }.sort
  sorted_nums = english_words.map {|word| WORDS.index(word) }
  sorted_nums
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# LS Solution:

def alphabetic_number_sort2(array)
  array.sort_by! {|num| WORDS[num]}
end

p alphabetic_number_sort2((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
