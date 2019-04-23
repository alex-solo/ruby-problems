1.upto(99) {|num| puts num if num.odd?}

#or

range = (1..99)
range.step(2) {|i| puts i}