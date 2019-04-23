items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*produce, wheat|
  puts produce.join(', ')
  puts wheat
end
puts '-----------------------'
# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |apples, *produce, wheat|
  puts apples
  puts produce.join(', ')
  puts wheat
end
puts '-----------------------'
# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |apples, *produce|
  puts apples
  puts produce.join(', ')
end
puts '-----------------------'
# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

gather(items) do |apples, corn, cabbage, wheat|
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!


#using individual methods and not passing to block


# 1
def gather2(*produce, wheat)
  puts "Let's start gathering food."
  p produce
  puts wheat
  puts "We've finished gathering!"
end

# 2
def gather3(apples, *vegetables, wheat)
  puts "Let's start gathering food."
  puts apples
  p vegetables
  puts wheat
  puts "We've finished gathering!"
end

# 3
def gather4(apples, *assorted)
  puts "Let's start gathering food."
  puts apples
  p assorted
  puts "We've finished gathering!"
end

# 4
def gather5(apples, corn, cabbage, wheat)
  puts "Let's start gathering food."
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
  puts "We've finished gathering!"
end

# method call
p '---------------'
gather2(*items) # notice we need a splat operator for passing in that array now.
p '---------------'
gather3(*items)
p '---------------'
gather4(*items)
p '---------------'
gather5(*items)
