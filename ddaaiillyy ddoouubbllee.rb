=begin
Write a method that takes a string argument and returns a new string that contains the 
value of the original string with all consecutive duplicate characters collapsed into a single character.

Understand the problem:
- input: a string
- output: string in which consecutive duplicate values are collapsed to a single char. 

Data Structure:
- an array to store each word as an element in array
  
Algorithm:
- split string to array
- map through each word
  - iterate through every char, appending each char to empty string unless last char in the string is the same char
  - return new string for every word in array
- join the array 
=end

def crunch(string)
  crunch_words = string.split.map do |word|
    str = ''
    word.chars.each { |char| str << char unless str[-1] == char }
    str
  end
  crunch_words.join(' ')
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''
p '------------------'


# LS Solution:
# loop through each character in string and append to a new string unless the next character in string is the same as the last


def crunch2(string)
  crunch_text = ''
  index = 0
  while index <= (string.length - 1) do
    crunch_text << string[index] unless string[index] == string[index + 1]
    index += 1
  end
  crunch_text
end

p crunch2('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch2('4444abcabccba') #== '4abcabcba'
p crunch2('ggggggggggggggg') #== 'g'
p crunch2('a') #== 'a'
p crunch2('') #== ''
p '-----------------'

# FURTHER EXPLORATION:
# Combination of mine and LS solutions
# Simpler way than the first attempt - no need to use 'map', iterate directly through string.

def crunch3(string)
  crunch_text = ''
  string.chars.each do |char|
    crunch_text << char unless crunch_text[-1] == char
  end
  crunch_text
end

p crunch3('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch3('4444abcabccba') #== '4abcabcba'
p crunch3('ggggggggggggggg') #== 'g'
p crunch3('a') #== 'a'
p crunch3('') #== ''
p '--------------------'

# Solve using Regex:

def crunch4(string)
  letters = string.chars.uniq
  letters.each do |letter|
    string.gsub!(/#{letter}{2,}/, letter)
  end
  string
end

p crunch4('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch4('4444abcabccba') #== '4abcabcba'
p crunch4('ggggggggggggggg') #== 'g'
p crunch4('a') #== 'a'
p crunch4('') #== ''
