hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |k, v|
  v.each do |word|
    word.split('').each do |char|
      puts char if %w(a e i o u).include?(char)
    end
  end
end