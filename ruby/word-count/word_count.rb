class Phrase
  def initialize(words)
    @phrase = words
  end

  def word_count
    phrase = @phrase.split(/(?!\')\W+/)
    phrase.each_with_object(Hash.new(0)) do |word, hash| 
      hash[word.downcase] += 1
    end 
  end
end
