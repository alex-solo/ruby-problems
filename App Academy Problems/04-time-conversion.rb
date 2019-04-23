# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)
  "%d:%02d" % minutes.divmod(60)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

p time_conversion(15) 
p time_conversion(150) 
p time_conversion(360) 
