class Anagram
  def combine_anagrams(words)
    sorted_words = unique_sorted_words(words)
    anagram_list = build_anagram_list(sorted_words)

    words.each do |w|
      key_word = w.downcase.chars.sort.join
      anagram_list[key_word] << w
    end

    anagram_list.values
  end

  def unique_sorted_words(words)
    words = words.map { |w| w.downcase.chars.sort.join }
    words.uniq
  end

  def build_anagram_list(words)
    anagram_list = Hash.new{ |h, k| h[k] = [] }
    words.each do |w|
      anagram_list[w]
    end
    anagram_list
  end

end
