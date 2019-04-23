factorials = Enumerator.new do |yielder|
  value = 0
  result = 1
  loop do
    result = value.zero? ? 1 : result * value
    yielder << result
    value += 1
  end
end

p factorials.next
p factorials.next
p factorials.next
p factorials.next
p factorials.next
p factorials.next
p factorials.next

factorials.rewind

factorials.each_with_index do |num, idx|
  puts num
  break if idx == 6
end
