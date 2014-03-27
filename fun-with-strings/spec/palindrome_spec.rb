require 'spec_helper'

describe Palindrome do

  describe "#is_palindrome?" do
    it "returns false for no palindromes" do
      Palindrome.is_palindrome?('abc').should be false
    end

    it "should be case insensitive" do
      Palindrome.is_palindrome?("Abracadabra").should be false
    end

    it "should ignore special characters" do
      Palindrome.is_palindrome?("Madam, I'm Adam!").should be true
      Palindrome.is_palindrome?("A man, a plan, a canal -- Panama").should be true
    end

  end
end
