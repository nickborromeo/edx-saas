class String

  def is_palindrome?
    word = self.downcase.gsub(/[^a-zA-z]/,'')
    inverted_word = word.reverse
    if inverted_word != word
      return false
    else
      return true
    end
  end

  def count_words
    self.scan(/\w+/).inject(Hash.new(0)) do |words,word|
      word = word.downcase
      words[word] += 1
      words
    end
  end
end
