
class Integer

def factorial
   (1..self).inject {|product, n| product * n}
end

end

puts 3.factorial
puts 5.factorial
puts 8.factorial