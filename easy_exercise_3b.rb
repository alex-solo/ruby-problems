nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd_nums = nums.select do |num|
    num.odd?                 # or if num % 2 == 1
end
