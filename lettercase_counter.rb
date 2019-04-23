=begin
- input: a string with lower, upper case chars as well as other (like numbers)
- output: a hash which counts occurences of lowercase and uppercase chars as well as other (neither lower or upper case)
  - rules: spaces count as 'neither'

Data Structure:
- work directly with string

Algorithm:
- create a new hash with default value of 0 for each key (:lowercase, :uppercase, :neither)
- using the String #count method, populate the hash with appropriate values
- output the resulting hash
=end


def letter_case_count(string)
  hash = {}
  hash[:lowercase] = string.count('a-z')
  hash[:uppercase] = string.count('A-Z')
  hash[:neither] = string.count('^a-zA-Z')
  hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
p '---------------'

def letter_case_count2(string)
  hash = {:lowercase => 0, :uppercase => 0, :neither => 0}
  
  string.chars.each do |char|
    hash[:lowercase] += 1 if char =~ /[a-z]/
    hash[:uppercase] += 1 if char =~ /[A-Z]/
    hash[:neither] += 1 if char =~ /[^a-zA-Z]/ 
  end
  hash
end

p letter_case_count2('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count2('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count2('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count2('') #== { lowercase: 0, uppercase: 0, neither: 0 }
