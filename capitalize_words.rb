def word_cap(str)
  str.split(' ').map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
p '------------------'

# Further Exploration:

lower_case = ('a'..'z').to_a
upper_case = ('A'..'Z').to_a
ALPHABET = lower_case.zip(upper_case).to_h

def word_cap2(string)
  arr = string.downcase.split.each do |word|
      word[0] = ALPHABET[word[0]] unless word.chr == '"'
  end
  arr.join(' ')
end

p word_cap2('four score and seven') == 'Four Score And Seven'
p word_cap2('the javaScript language') == 'The Javascript Language'
p word_cap2('this is a "quoted" word') == 'This Is A "quoted" Word'
p '-----------------'

def word_cap3(string)
  arr = string.split
  arr.map! do |word| 
    word.downcase.chars.map.with_index do |char, idx|
      char.upcase! if idx == 0
      char
    end.join('')
  end
  arr.join(' ')
end

p word_cap3('four score and seven') #== 'Four Score And Seven'
p word_cap3('the javaScript language') #== 'The Javascript Language'
p word_cap3('this is a "quoted" word') #== 'This Is A "quoted" Word'
p '----------------'

def word_cap4(string)
  arr = string.downcase.split
  result = arr.map do |word|
    word[0] = word[0].upcase
    word
  end
  result.join(' ')
end

p word_cap4('four score and seven') #== 'Four Score And Seven'
p word_cap4('the javaScript language') #== 'The Javascript Language'
p word_cap4('this is a "quoted" word') #== 'This Is A "quoted" Word'
