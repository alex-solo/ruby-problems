OPERATORS = [:+, :-, :*, :/, :%, :**]

puts "Please enter 1st integer"
first = gets.chomp.to_i

puts "Please enter 2nd integer"
second = gets.chomp.to_i

numbers = [first, second]
OPERATORS.each do |operation|
  puts "#{first} #{operation.to_s} #{second} = #{numbers.inject(operation)}"
end
