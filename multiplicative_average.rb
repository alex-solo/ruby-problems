def show_multiplicative_average(array)
  average = array.inject(:*) / array.size.to_f
  puts "The result is %0.3f" % average
end

show_multiplicative_average([3, 5])
#The result is 7.500

show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667
