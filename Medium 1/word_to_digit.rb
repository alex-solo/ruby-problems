=begin
- input: string
- output: original string with all words represending numbers replaced by digits

- split string into array of words
- map through array with set of if conditions:
  - if word is not a number, return same word
  - if array_of_numbers.include?(word) then replace with equivalent digit
    - %w(zero one two three four five six seven eight nine) words will correspond to index
- join mapped array and return string
=end

NUMBERS = %w(zero one two three four five six seven eight nine)

def word_to_digit(string)
  arr = string.split.map do |word|
    if word =~ /[^a-zA-Z]/
      word.chars.partition { |char| char =~ /[a-zA-Z]/ }.map(&:join).map do |el|
        if NUMBERS.include?(el)
          NUMBERS.index(el)
        else
          el
        end
      end.join
    else
      if NUMBERS.include?(word)
          NUMBERS.index(word)
      else
        word
      end
    end
  end
  arr.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
p '-------'

# LS Solution:

def word_to_digit2(string)
  new_str = string.gsub('.', ' .').split.map do |word|
    NUMBERS.include?(word.downcase) ? NUMBERS.index(word.downcase) : word
  end.join(' ').gsub(' .', '.')

  new_str.gsub!(/(\d)\s/, '\1')
  phone_num = new_str[/\d+/]
  new_str.gsub!(/(\d{3})(\d{3})(\d{4})/, '(\1)\2-\3')
end

p word_to_digit2('Please call me at four one six five seven zero seven six zero two. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
