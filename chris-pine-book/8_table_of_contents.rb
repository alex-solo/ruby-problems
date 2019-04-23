line_width = 50

title = "Table of contents".center(line_width)

chapters = [['Getting Started', 1], ['Numbers', 9], ['Letters', 13]]

puts title.center(line_width)
chapters.each_with_index do |chap, idx|
  puts "#{idx+1}. #{chap[0]}".ljust(line_width) + "#{chap[1]}"
end