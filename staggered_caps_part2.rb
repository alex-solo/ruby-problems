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

def staggered_case(string, ignore_non_alpha = false)
  need_upper = true
  result = ''
  string.chars.each do |char|
    if (char =~ /[^a-zA-z]/)
      result << char
      need_upper = !need_upper if ignore_non_alpha == true
    elsif need_upper
      result << char.upcase
      need_upper = !need_upper
    elsif need_upper == false
      result << char.downcase
      need_upper = !need_upper
    end
  end
  result
end

p staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') #== 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 nUmBeRs'
