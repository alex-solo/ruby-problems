
def roman_to_integer(string)
    hash = {'M': 1000, 'D': 500, 'C': 100, 'L': 50, 'X': 10, 'V': 5, 'I': 1}
    string = "MCMXCIX"
    array = string.split(//)
    sum = 0
    
    array.each_index do |idx|
        test = array[idx] + array[idx+1]
        case test
        when "CM"
            sum = sum + 900
        when "CD"
            sum = sum + 400
        when "XC"
            sum = sum + 90
        when "XL"
            sum = sum + 40
        when "IX"
            sum = sum + 9
        when "IV"
            sum = sum + 4
        else
            hash.values_at(:"#{array[idx]}") > hash.values_at(:"#{array[idx+1]}")
            sum = sum + hash.values_at(:"#{array[idx]}")
        end
    end
            
    
    
end


integer = roman_to_integer('MCMXCIX')

puts "Party like it's #{integer}!"