nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
odd_num = []

nums.each do |num|
    if num.odd?                 # or if num % 2 == 1
        odd_num << num
    end
end

p odd_num