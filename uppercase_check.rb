def uppercase?(string)
  return true if string.empty?
  string.count('a-zA-Z') == string.count('A-Z')
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
p '-----'

def uppercase2?(string)
  string == string.upcase
end

p uppercase2?('t') == false
p uppercase2?('T') == true
p uppercase2?('Four Score') == false
p uppercase2?('FOUR SCORE') == true
p uppercase2?('4SCORE!') == true
p uppercase2?('') == true
