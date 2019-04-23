
def roman_to_integer(string)
    hash = {'M': 1000, 'D': 500, 'C': 100, 'L': 50, 'X': 10, 'V': 5, 'I': 1}

total = 0
prev = 0

string.reverse.each_char do |c|
    val = hash[:"#{c}"]
    if val < prev 
        val = val * -1
    else
        prev = val
    end
    total = total + val
end
        
total


end

puts roman_to_integer("MCMXCIX")