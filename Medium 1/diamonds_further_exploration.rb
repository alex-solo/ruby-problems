=begin
ex. 7
1 star
* 1 space *
* 3 space *
* 5 space *
* 3 space *
* 1 space *
1 star

=end


def diamond(num)
 puts "*".center(num)
 (1..(num - 2)).step(2) { |i| puts ("*" + (" " * i) + "*").center(num) }
 (num - 2).downto(1) { |i| puts ("*" + (" " * i) + "*").center(num) if i.odd? }
 puts "*".center(num)
end

diamond(15)
