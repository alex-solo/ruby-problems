def swapcase(string)
  test_string = string.downcase
  idx = 0
  
  loop do
    if test_string[idx] == string[idx]
      string[idx] = string[idx].upcase
    else
      string[idx] = string[idx].downcase
    end
    idx += 1
    break if idx == string.length
  end
  string
end

p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'
p '-----------'

def swapcase2(string)
  str_arr = string.chars.map do |char|
    if char =~ /['a-z']/
      char.upcase
    elsif char =~ /['A-Z']/
      char.downcase
    else
      char
    end
  end
  str_arr.join
end

p swapcase2('CamelCase') #== 'cAMELcASE'
p swapcase2('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'
p '-----------'
