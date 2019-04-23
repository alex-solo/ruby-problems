

def do_until_false(first_input, some_proc)
   input = first_input
   output = first_input
   
   while output
      input = output
      output = some_proc.call(input)
   end
   input
end

build_array_of_squares = Proc.new do |arr|
   last_number = arr.last
   if last_number <= 0
      false
   else
      arr.pop
      arr.push(last_number*last_number)
      arr.push(last_number - 1)
   end
end

puts do_until_false([6], build_array_of_squares).inspect