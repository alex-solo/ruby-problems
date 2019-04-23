
def compose proc1, proc2
   Proc.new do |x|
      proc2.call(proc1.call(x))
   end
end

double_it = Proc.new do |x|
   x * 2
end

square_it = Proc.new do |x|
   x * x
end

double_then_square = compose double_it, square_it

square_then_double = compose square_it, double_it

puts double_then_square.call(6)

puts square_then_double.call(6)
