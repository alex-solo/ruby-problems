#Populated 2 new arrays (one with all names, other with all birthdays) 
#and matched every name with equivalent index in the bday array
#while populating the new hash

file = 'birthdays.txt'

read = File.read(file)
arr = []
read.each_line do |line| 
  line.chomp!
  arr << line
end

arr.map! do |element|
  element.split(',', 2)
end

names = []
bdays = []
arr.each do |el|
  name = el[0]
  bday = el[1]
  names << name
  bdays << bday
end

bdays.map! do |bday|
  bday.strip
end

birth_dates = {}

names.each do |name|
    birth_dates[name] = 0
  end

counter = 0
birth_dates.each do |k,v|
  v = bdays[counter]
  birth_dates[k] = v
  counter += 1
end



puts "Please enter a name"
input = gets.chomp

birthday = birth_dates["#{input}"]

dates = {"Jan"=>1, "Feb"=>2, "Mar"=>3, "Apr"=>4, "May"=>5, "Jun"=>6, "Jul"=>7, "Aug"=>8, "Sep"=>9, "Oct"=>10, "Nov"=>11, "Dec"=>12}

year = birthday.split(', ')[1]
month = dates["#{(birthday.split(', ')[0]).split(' ')[0]}"]
day = (birthday.split(', ')[0]).split(' ')[1]

a = Time.new
b = Time.local(year, month, day)

if a.month < b.month || (a.month == b.month && a.day < b.day)
    c = Time.local(a.year, month, day)
    diff = c - a
    days = diff/60/60/24
    age = (c - b)/60/60/24/365
else
    c = Time.local(a.year+1, month, day)
    diff = c - a
    days = diff/60/60/24
    age = (c - b)/60/60/24/365
end

puts "Birthday: #{birthday}"
puts "Next birthday is in #{days.to_i} days!"
puts "They will be #{age.to_i} years old"

