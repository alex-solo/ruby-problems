def prompt(msg)
  puts "=> #{msg}"
end

prompt "Enter a noun:"
noun = gets.chomp

prompt "Enter a verb:"
verb = gets.chomp

prompt "Enter an adjective:"
adj = gets.chomp

prompt "Enter an adverb:"
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adj} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adj} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adj} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample
