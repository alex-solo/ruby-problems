def diamond(num)
  (1..num).step(2) { |i| puts ("*" * i).center(num) }
  (num - 2).downto(1) { |i| puts ("*" * i).center(num) if i.odd? }
end

diamond(15)
