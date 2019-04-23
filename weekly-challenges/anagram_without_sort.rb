# Write a program that, given a word and a list of possible anagrams, selects the 
# correct sublist that contains the anagrams of the word.
# For example, given the word "listen" and a list of candidates like "enlists" "google" "inlets" "banana" 
# the program should return a list containing "inlets". Please read the test suite for exact rules of anagrams.

# input: the word we want to find anagrams for
#         and array of words that we are testing against (comparing word to each element in the array)
        
# output: word or words (array) that are anagrams of initial word

# data structure: 
#   Array?
#     - itereate through given array. First, select only those words that are different from original word.
#       - select further to see if transformed word (ex tan => atn) equals the original word.
#   Hash?
#     - 'ant' becomes {'a' => 1, 'n' => 1, 't' => 1}
#     - iterate through given array and compare hash version of every word to original 
#     - if it is a match, push that word to results array


class Anagram
  def initialize(word)
    @word = word
  end

  def match(arr)
    arr.select { |wrd| anagram?(wrd) }
  end

  private

  def occurrence(word)
    occurrence = Hash.new(0)
    word.downcase.chars { |char| occurrence[char] += word.count(char) }
    occurrence
  end

  def anagram?(word)
    return false if @word == word.downcase
    occurrence(@word.downcase) == occurrence(word.downcase)
  end

end

detector = Anagram.new('ant')

p detector.match(['tan', 'stand', 'at'])