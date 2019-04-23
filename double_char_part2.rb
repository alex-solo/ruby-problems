def double_consonants(string)
  result = ''
  string.chars do |char|
      if !%w(a e i o u).include?(char)
        if char =~ /[a-zA-Z]/
          result << char << char
        else
          result << char
        end
      else
        result << char unless char =~ /[^a-zA-Z0-9]/
      end
  end
result
end

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") #== "HHellllo-WWorrlldd!"
p double_consonants("July 4th") #== "JJullyy 4tthh"
p double_consonants('') #== ""
p '------------'

def double_consonants2(string)
  result = ''
  string.chars do |char|
    char =~ /[aeiou[^a-zA-Z]]/ ? result << char : result << char << char
  end
  result
end

p double_consonants2('String') #== "SSttrrinngg"
p double_consonants2("Hello-World!") #== "HHellllo-WWorrlldd!"
p double_consonants2("July 4th") #== "JJullyy 4tthh"
p double_consonants2('') #== ""
