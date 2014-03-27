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
end
