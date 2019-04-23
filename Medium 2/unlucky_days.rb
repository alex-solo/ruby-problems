=begin
  - input: year (number)
  - output: number representing how many days that year were Friday the 13th
  
  2015:
    -Jan 13
    -Feb 13
    -March 13
    -...
    - Run #friday? on each
  
  Algorithm:
    - start_date = Time.new(2015, 1, 13)
    - end_date = Time.new(2015, 12, 13)
      - 12.times
    - create simple loop that counts through the months
    - counter that adds 1 for every friday
    - return counter
=end

def friday_13th?(year)
  month = 1
  counter = 0
  
  loop do
    time = Time.new(year, month, 13)
    counter += 1 if time.friday?
    month += 1
    break if month > 12
  end
  counter
end

p friday_13th?(2015) #== 3
p friday_13th?(1986) #== 1
p friday_13th?(2019) #== 2
p '---'

def friday_13th2?(year)
  count = 0
  (1..12).each { |i| count += 1 if Time.local(year, i, 13).friday? }
  count
end

p friday_13th2?(2015) #== 3
p friday_13th2?(1986) #== 1
p friday_13th2?(2019) #== 2
p '---'

def friday_13th3?(year)
  (1..12).map { |i| true if Time.local(year, i, 13).friday? }.count(true)
end

p friday_13th3?(2015) #== 3
p friday_13th3?(1986) #== 1
p friday_13th3?(2019) #== 2
