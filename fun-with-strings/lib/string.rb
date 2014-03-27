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
    words = {}
    self.scan(/\w+/).each do |word|
      word = word.downcase
      if words[word]
        words[word] += 1
      else
        words[word] = 1
      end
    end
    words
  end
end
