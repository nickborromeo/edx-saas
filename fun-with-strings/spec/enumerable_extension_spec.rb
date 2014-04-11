require "spec_helper"

describe Enumerable do
  describe ".is_palindrome?" do
    it "should recognize an array" do
      expect{ [].is_palindrome? }.not_to raise_error
    end

    it "should recognize a hash" do
      expect { {}.is_palindrome? }.not_to raise_error
    end

    it "should return true if it is a palindrome" do
      [1,2,3,2,1].is_palindrome?.should == true
    end

    it "should return false if it is not a palindrome" do
      [1,3,2,1].is_palindrome?.should == false
      {x: 1, y: 2, z: 3}.is_palindrome?.should == false
    end

  end
end
