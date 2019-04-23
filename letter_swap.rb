=begin
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word is swapped.
You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

Understand the problem:
- input: string 
- output: a string in which every word has first and last character swapped
- rules: 
  - string of words separate by spaces
  - every word is at least 1 letter
  - string contains at least 1 word
  - nothing but words and spaces

Data Structure:
- Array lends itself neatly to this problem
  - every word can be an element in an array
  
Algorithm:
- split string into an array with each word as element
- map the array 
  - capture first and last char in word 
    - first = word[0]
    - last = word[-1]
  - set first equal to last
- return as string by joining the array
=end

def swap_chars(word)
  chars = word.chars
    chars[0], chars[-1] = chars[-1], chars[0]
    chars.join
end


def swap(string)
  arr = string.split

  arr.map! do |word|
    swap_chars(word)
  end
  arr.join(' ')
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
