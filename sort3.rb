arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

new = arr.sort_by do |a|
  a.select {|num| num.odd? }.inject(:+)
end

p new