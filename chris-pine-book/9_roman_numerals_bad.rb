



def convert(num)
    if num/1000 != 0
        puts 'M' * (num/1000)
        return if num%1000 == 0
        if num%1000 != 0
            puts 'D' * ((num%1000)/500)
            return if (num%1000)%500 == 0
                if num%500 != 0
                    puts 'C' * ((num%500)/100)
                return if ((num%500)/100) == 0
                end
        end
    end
    
    if num/500 != 0
        puts 'D' * (num/500)
        return if num%500 == 0
        if num%500 != 0
            puts 'C' * ((num%500)/100)
            return if ((num%500)/100) == 0
        end
    end
    
end

convert(2199)