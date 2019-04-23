

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

num_at_start = 100000

num_bot = Proc.new {|n| "bottle#{n == 1? '' : 's'}"}

num_at_start.downto(2) do |num|
  puts "#{english_number(num)} #{num_bot[num]} of beer on the wall, #{english_number(num)} #{num_bot[num]} of beer!"
  puts "Take one down, pass it around, #{english_number(num-1)} #{num_bot[num]} of beer on the wall!"
end
  
  puts "#{english_number(1)} #{num_bot[1]} of beer on the wall,  #{english_number(1)} #{num_bot[1]} of beer!"
  puts "Take one down, pass it around, no more bottles of beer on the wall"
  