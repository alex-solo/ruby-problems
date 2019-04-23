items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  yield(items)
end

gather(items) { |produce| puts "I like #{produce.join(', ')}" }
gather(items) { |prod| puts "Today we bought #{prod[0]} and some #{prod[2] }." }
