=begin
Given a string that consists of some words and an assortment of non-alphabetic characters, 
write a method that returns that string with all of the non-alphabetic characters replaced by spaces. 
If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

Understand the problem:
- input: string of chars and non-alphabetic chars
- output: a string in which only alphabetic chars remain
- rules: 
  - replace every non-alpha char with space
  - if more than one space, force to one space

Data Structure:
- choice: can work directly with string and gsub or separate into an array
  - will work directly with string here as index doesn't matter, just pattern recognition.
  - in Further Exploration, try without RegExp
  
Algorithm:
- using string method gsub and regexp rules, replace every non alphabetic char with one space.
=end


def cleanup(string)
  string.gsub!(/[^a-zA-Z]+/, ' ')
end



p cleanup("---what's my +*&line?") #== ' what s my line '
p cleanup("what's my +*& line?") #== 'what s my line '
p cleanup("     Hi4324&%^&* my &*(^))^&*^* name     *(*(    is Alex")
p '-----------------------------'


# FURTHER EXPLORATION

LETTERS = ('a'..'z').to_a

def cleanup2(string)
  arr = string.chars
  arr.each_with_index do |char, idx|
    arr[idx] = ' ' if !LETTERS.include?(char.downcase)
  end
  arr.join.squeeze(' ')
  
end

p cleanup2("---what's my +*&line?") #== ' what s my line '
p cleanup2("what's my +*& line?") #== 'what s my line '
p cleanup2("     Hi4324&%^&* my &*(^))^&*^* name     *(*(    is Alex")
