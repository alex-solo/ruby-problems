

birthday = "Jan  5, 1938"
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
else
    c = Time.local(a.year+1, month, day)
    diff = c - a
    days = diff/60/60/24
end

puts "Next birthday is in #{days.to_i} days!"
