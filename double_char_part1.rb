=begin
- input: string
- output: string with every char doubled

Algorithm:
- convert string to array of chars
- iterate through the chars
  - 2.times do 
    - push char to new empty string
- return string
=end

def repeater(string)
  result = ''
  string.chars do |char|
    2.times { result << char }
  end
result
end

p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") #== "GGoooodd  jjoobb!!"
p repeater('') #== ''
p '-----------------'

def repeater2(string)
  string.chars.inject('') { |result, char| result + char + char }  
end

p repeater2('Hello') #== "HHeelllloo"
p repeater2("Good job!") #== "GGoooodd  jjoobb!!"
p repeater2('') #== ''
