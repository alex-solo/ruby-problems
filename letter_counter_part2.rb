=begin
Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.
Words consist of any string of characters that do not include a space and do not include non-alphabetic characters.

Understand the problem:
- input: string
  - empty string should return emtpy hash
  - word is any consecutive chars without a space
- output: hash with word length as key and number of words of that length as value

Data Structure:
- Array lends itself neatly to this problem
  - every word can be an element in an array
- Hash to store result
  
Algorithm:
- create an empty hash
- split string to array with each word as element
- map array to convert to word lengths and then sort the array
- iterate through sorted array, while populating empty hash with length element as key and number of occurences as value
=end

word = 'pineapple%^&'
word2 = 'pineapple%^&'
# to delete non-alphabetic characters both ways work:
word.delete!('^a-zA-Z')
word2.gsub!(/\W+/, '')

p word
p word2
p '----------'

def word_sizes(string)
  hash = Hash.new(0)
  string.split.each { |word| hash[word.gsub(/\W+/, '').length] += 1 }
  hash
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') #== {}
p '----------------------'

# LS Solution

def word_sizes2(string)
  hash = Hash.new(0)
  string.split.each do |word|
    clean_word = word.delete('^a-zA-z')
    hash[clean_word.length] += 1
  end
  hash
end

p word_sizes2('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes2('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 3 }
p word_sizes2("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes2('') #== {}
