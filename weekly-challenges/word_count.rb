class Phrase
  def initialize(phrase)
    @words = phrase.split(/[^a-z\']/i)
    @words.delete('')
  end
  
  def word_count
    @words.each_with_object(Hash.new(0)) do |word, hash|
      hash[word.downcase] += 1
    end
  end
end

phrase = Phrase.new("First: don't laugh. Then: don't cry.")

p phrase.word_count


