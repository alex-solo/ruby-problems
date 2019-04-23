=begin
- create empty hash with 3 keys (lowercase, uppercase, neither)
- total count = string.length
- hash[lowercase] = (string.count('a-z').to_f / total) * 100
=end

def round(num)
  if num.to_i == num
    num.to_i
  else
    num.round(1)
  end
end

def letter_percentages(string)
  hash = {}
  total = string.length
  low = (string.count('a-z').to_f / total) * 100
  up = (string.count('A-Z').to_f / total) * 100
  neither = (string.count('^a-zA-Z').to_f / total) * 100
  
  hash[:lowercase] = round(low)
  hash[:uppercase] = round(up)
  hash[:neither] = round(neither)
  
  hash
end

p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }
