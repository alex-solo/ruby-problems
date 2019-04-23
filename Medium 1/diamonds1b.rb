def diamond(num)
  stars_arr = []
  (1..num).step(2) { |i| stars_arr << ("*" * i).center(num) }
  puts stars_arr, stars_arr.reverse[1..-1]
end

diamond(9)
