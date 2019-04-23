NUMBERS = %w(zero one two three four five six seven eight nine ten)
OPERATORS = %w(plus minus divided multiply)

def mathphrase(num)
  array = []
  num.times do 
    array << NUMBERS.sample
    array << OPERATORS.sample
  end
  array << NUMBERS.sample
  
  array.each do |word|
    word << ' by' if word == 'divided' || word == 'multiply'
  end
  
  array.join(' ')
end

10.times do
  length = rand(1..30)
  p mathphrase(length)
  p '----------------'
end
