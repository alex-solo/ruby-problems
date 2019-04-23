nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

nums.select do |num|
    if num.odd? 
        print num
    end
end
