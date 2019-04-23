
def roman_to_integer(string)
    hash = {'M': 1000, 'D': 500, 'C': 100, 'L': 50, 'X': 10, 'V': 5, 'I': 1}

total = 0
prev = 0
index = string.length - 1


while index >= 0
c = string[index]
index = index - 1
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


puts (roman_to_integer('MCMXCIX'))