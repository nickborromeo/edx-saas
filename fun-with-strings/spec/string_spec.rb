require 'spec_helper'

describe String do

  describe "#is_palindrome?" do
    it "returns false for no palindromes" do
      'abc'.is_palindrome?.should be false
    end

    it "should be case insensitive" do
      "Abracadabra".is_palindrome?.should be false
    end

    it "should ignore special characters" do
      "Madam, I'm Adam!".is_palindrome?.should be true
      "A man, a plan, a canal -- Panama".is_palindrome?.should be true
    end
  end

  describe "count_words" do
    it "should return a Hash" do
      "test".count_words.is_a?(Hash).should be true
    end

    it "counts the words properly" do
      count = "doo bee doo bee doo".count_words
      count['doo'].should eq(3)
    end

    it "should disregard special characters" do
      count = "a man, a plan, a canal -- Panama".count_words
      count['--'].should be nil
    end

    it "counts the words properly" do
      count = "Doo bee doO bee doo".count_words
      count['doo'].should eq(3)
    end
  end

end
