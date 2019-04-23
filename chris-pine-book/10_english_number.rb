

def english_number(num)
    if num < 0 
       return "error"
    end
    
    if num > 100
        return 'Error'
    end
    
    num_string = ''

    left = num #98
    write = num/100 #how many hundreds left? ZERO
    left = left - write*100

    if write > 0
        return "one hundred"
    end

write = left/10 #how many tens left? NINE
left = left - write*10 #8 left

    if write > 0
        if write == 1
        if left == 0
            num_string = num_string + 'ten'
        elsif left == 1
            num_string = num_string + 'eleven'
        elsif left == 2
            num_string = num_string + 'twelve'
        elsif left == 3
            num_string = num_string + 'thirteen'
        elsif left == 4
            num_string = num_string + 'fourteen'
        elsif left == 5
            num_string = num_string + 'fiteen'
        elsif left == 6
            num_string = num_string + 'sixteen'
        elsif left == 7
            num_string = num_string + 'seventeen'
        elsif left == 8
            num_string = num_string + 'eighteen'
        elsif left == 9
            num_string = num_string + 'nineteen'
        end
        
        left = 0
        
    elsif write == 2
        num_string = num_string + 'twenty'
    elsif write == 3
        num_string = num_string + 'thirty'
    elsif write == 4
        num_string = num_string + 'fourty'
    elsif write == 5
        num_string = num_string + 'fifty'
    elsif write == 6
        num_string = num_string + 'sixty'
    elsif write == 7
        num_string = num_string + 'seventy'
    elsif write == 8
        num_string = num_string + 'eighty'
    elsif write == 9
        num_string = num_string + 'ninety'
    end
       
     if left > 0 
         num_string = num_string + '-'
     end
    end

write = left
left = 0

if write > 0
    if write == 1
        num_string = num_string + 'one'
    elsif write == 2
        num_string = num_string + 'two'
    elsif write == 3
        num_string = num_string + 'three'
    elsif write == 4
        num_string = num_string + 'four'
    elsif write == 5
        num_string = num_string + 'five'
    elsif write == 6
        num_string = num_string + 'six'
    elsif write == 7
        num_string = num_string + 'seven'
    elsif write == 8
        num_string = num_string + 'eight'
    elsif write == 9
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