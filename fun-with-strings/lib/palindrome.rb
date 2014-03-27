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
end
