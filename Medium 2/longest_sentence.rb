=begin
- given text, split text into sentences
  - array of sentences = text.split(/[.!?]/)
- use inject method to find longest sentence
  - returned sentence.split.size == words in sentence
=end

file = File.read("pg84.txt")

def longest_sentence_length(arr)
  arr.inject do |memo, sentence|
    memo.split.size > sentence.split.size ? memo : sentence
  end.split.size
end  

arr_of_sentences = file.split(/[.!?]/)
p longest_sentence_length(arr_of_sentences)
