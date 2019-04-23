

arr = [1, 3, 5, 7, 9, 11]
number = 23

arr.each do |num|
    if num == number
        puts "#{number} is in the array."
    end
end