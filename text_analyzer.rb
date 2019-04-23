class TextAnalyzer
  def process
    file = File.read("speech.txt")
    yield(file)
  end
end

analyzer = TextAnalyzer.new
analyzer.process do |file| 
    num_lines = file.split("\n").size
    puts "#{num_lines} lines"
end

analyzer.process do |file|
  num_paragraphs = file.split("\n\n").size
  puts "#{num_paragraphs} paragraphs"
end

analyzer.process do |file|
  words = file.split(' ')
  words.delete_if do |word| 
    word.chars.all? { |char| char =~ /\W/ }
  end
  puts "#{words.size} words"
end
