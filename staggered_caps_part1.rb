=begin
- input: string
- output: string with alternating capitalization scheme. Chars other than "a-zA-Z" left alone.
- model the problem:
  - string[0] = upcase
  - string[1] = downcase
  - string[2] = upcase
  - ...
  -generally:
    - even numbered idx is upper case, odd is lower case
    
Algorithm:
- convert string to array of chars
- use #map to transform each element based on element's index
  - char.upcase if idx.even?
  - char.downcase if idx.odd?
- return joined array
=end

def staggered_case(string)
  arr = string.chars.map.with_index do |char, idx|
    if idx.even?
      char.upcase
    elsif idx.odd?
      char.downcase
    else
      char
    end
  end
arr.join
end

p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'
p '---------'

# Furhter Exploration:

def staggered_case2(string, first_char_upper: true)
  arr = string.chars.map.with_index do |char, idx|
    if idx.even?
      first_char_upper ? char.upcase : char.downcase
    elsif idx.odd?
      first_char_upper ? char.downcase : char.upcase
    else
      char
    end
  end
arr.join
end

p staggered_case2('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case2('ALL_CAPS') #== 'AlL_CaPs'
p staggered_case2('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'
