#Given a sentence
#Split sentence into array
#Iterate over array and append each element to a different array while checking length of each element
#If element length is over 5 do not reverse

def reverse_words(sentence)
  words = sentence.split
  word_array = []
  words.each do |word|
    if word.length < 5
      word_array << word
    else
      word_array << word.reverse
    end
  end
  word_array.join(' ')
end

#Or LS solution:

def reverse_it(string)
  words = []
  string.split.each do |word|
    word.reverse! if word.length >= 5
    words << word
  end
  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
puts "---------------------------------"
puts reverse_it('Professional')          # => lanoisseforP
puts reverse_it('Walk around the block') # => Walk dnuora the kcolb
puts reverse_it('Launch School')         # => hcnuaL loohcS