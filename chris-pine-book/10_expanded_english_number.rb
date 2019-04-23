

def english_number(num)
    if num < 0 
       return "error"
    end
    
    if num == 0
        return 'zero'
    end
    
    num_string = ''

ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
zillions = [['hundred', 2], ['thousand', 3], ['million', 4], ['billion', 5]]

left = num

while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base
    left = left - write*zil_base
    
    if write > 0
        prefix = english_number(write)
        num_string = num_string + prefix + ' ' + zil_name
        if left > 0
            num_string = num_string + ' '
        end
    end
end

write = left/10
left = left - write*10

if write > 0
    if (write == 1) and (left > 0)
        num_string = num_string + teens[left-1]
        left = 0
    else
        num_string = num_string + tens_place[write-1]
    end
    
    if left > 0
        num_string = num_string + ' '
    end
end

write = left
left = 0

if write > 0
    num_string = num_string + ones_place[write-1]
end

num_string

end

puts english_number(231748)
puts english_number(22224748)
puts english_number(546748)
puts english_number(13532)
puts english_number(748)
puts english_number(98)
puts english_number(0)
puts english_number(-3)
puts english_number(100)
puts english_number(19)
puts english_number(999999)
puts english_number(10000000000)