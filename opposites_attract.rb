loop do

result = nil
first_integer = nil
second_integer = nil

loop do

loop do
    def valid_number?(number_string)
        number_string.to_i.to_s == number_string && number_string.to_i != 0
    end
    
    puts "Please enter a positive or negative integer:"
    first_integer = gets.chomp
    
    puts "Please enter a positive or negative integer:"
    second_integer = gets.chomp
    
    break if valid_number?(first_integer) == true && valid_number?(second_integer) == true
    puts "Invalid. Cannot be zero"
end

def positive_negative(num1, num2)
    if num1 > 0 && num2 > 0
        false
    else
        true
    end
end

break if positive_negative(first_integer.to_i, second_integer.to_i) == true

puts "Invalid. At least one number has to be negative"
end

result = first_integer.to_i + second_integer.to_i
puts "#{first_integer} + #{second_integer} = #{result}"
end