class Palindrome

  def self.is_palindrome?(word)
    word = word.downcase.gsub(/[^a-zA-z]/,'')
    inverted_word = word.reverse
    if inverted_word != word
      return false
    else
      return true
    end
  end
end
