

def english_number(num)
    if num < 0 
       return "Error"
    end
    
    if num > 100
        return 'Error'
    end
    
    num_string = ''
    
    hund = num/100
    tens = num/10
    ones = num%10
    
    if hund == 1
        return 'one hundred'
    end
    
    if tens > 0
        if tens == 1
            if ones == 0
                return 'ten'
            elsif ones == 1
                return 'eleven'
            elsif ones == 2
                return 'twelve'
            elsif ones == 3
                return 'thirteen'
            elsif ones == 4
                return 'fourteen'
            elsif ones == 5
                return 'fifteen'
            elsif ones == 6
                return 'sixteen'
            elsif ones == 7
                return 'seventeen'
            elsif ones == 8
                return 'eighteen'
            elsif ones == 9
                return 'nineteen'
            end
        elsif tens == 2
            num_string = num_string + 'twenty'
        elsif tens == 3
            num_string = num_string + 'thirty'
        elsif tens == 4
        num_string = num_string + 'fourty'
        elsif tens == 5
        num_string = num_string + 'fifty'
        elsif tens == 6
        num_string = num_string + 'sixty'
        elsif tens == 7
        num_string = num_string + 'seventy'
        elsif tens == 8
        num_string = num_string + 'eighty'
        elsif tens == 9
        num_string = num_string + 'ninety'
        end
       
     if ones > 0 
         num_string = num_string + '-'
     end
    end

if ones > 0
    if ones == 1
        num_string = num_string + 'one'
    elsif ones == 2
        num_string = num_string + 'two'
    elsif ones == 3
        num_string = num_string + 'three'
    elsif ones == 4
        num_string = num_string + 'four'
    elsif ones == 5
        num_string = num_string + 'five'
    elsif ones == 6
        num_string = num_string + 'six'
    elsif ones == 7
        num_string = num_string + 'seven'
    elsif ones == 8
        num_string = num_string + 'eight'
    elsif ones == 9
        num_string = num_string + 'nine'
    end
end

if num_string == ''
    return "zero"
end
    
num_string
end

puts english_number(98)
puts english_number(0)
puts english_number(-3)
puts english_number(100)
puts english_number(19)
puts english_number(10)
puts english_number(12)

