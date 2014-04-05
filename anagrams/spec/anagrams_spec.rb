require 'spec_helper'

describe "Anagram" do
  let(:a) { Anagram.new }
  let(:words) { ['cars', 'FOR', 'potatoes', 'rAcs', 'four', 'sCar', 'creams', 'SCream'] }

  describe "#unique_sorted_words" do
    it "sorts the words and ingnores case" do
      a.unique_sorted_words(words).should == ["acrs", "for", "aeoopstt", "foru", "acemrs"]
    end
  end

  describe "#build_anagram_list" do
    it "builds the anagram_list properly" do
      anagram_list = {"acrs"=>[], "for"=>[], "aeoopstt"=>[], "foru"=>[], "acemrs"=>[]}
      a.build_anagram_list(["acrs", "for", "aeoopstt", "foru", "acemrs"]).should == anagram_list
    end
  end

  describe "#combine_anagrams" do
    it "return correct number of occurences for an anagram" do
      words = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
      expected_output =
        [ ["cars", "racs", "scar"],
          ["for"],
          ["potatoes"],
          ["four"],
          ["creams", "scream"] ]

      a = Anagram.new
      actual_output = a.combine_anagrams(words)
      actual_output[0] = ["cars", "racs", "scar"]
    end

    it "returns the expected output list of anagrams" do
      words = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
      expected_output =
        [ ["cars", "racs", "scar"],
          ["for"],
          ["potatoes"],
          ["four"],
          ["creams", "scream"] ]
      a = Anagram.new
      a.combine_anagrams(words).should == expected_output
    end
  end
end
