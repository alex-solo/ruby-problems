# Given a sentence
# Convert sentence to array with each word as an element
# Push the last word to empty string variable until array is empty
# Print string

def reverse_sentence(sentence)
  string = ''
  unless sentence.empty?
    array = sentence.split(' ')
    until array.empty?
      if array.length == 1
        string << array.pop
      else
        string << array.pop + ' '
      end
    end
  end
  string
end

# Or much simpler LS solution:

def reverse_it(sentence)
  sentence.split(' ').reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts "----------------------------"
puts reverse_it('') == ''
puts reverse_it('Hello World') == 'World Hello'
puts reverse_it('Reverse these words') == 'words these Reverse'
