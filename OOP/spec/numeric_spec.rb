require "spec_helper"

describe "Numeric" do
  describe "#in" do
    it "should be able to convert dollars to euros" do
       5.dollars.in(:euros).should eq(3.870)
    end

    it "should be able to convert a dollar to euros" do
       1.dollars.in(:euros).should eq(0.774)
    end

    it "should be able to convert yen to dollars" do
      5.yen.in(:dollars).should eq(0.065)
    end

    it "should be able to convert rupees to dollars" do
      5.rupees.in(:dollars).should eq(0.095)
    end

    it "should be able to convert euros to dollars" do
      5.euros.in(:dollars).should eq(6.46)
    end
  end

  describe "#euros" do
    it "euros should be a valid currency" do
      expect{ 5.euros }.not_to raise_error
    end

    it "euro should be a valid currency" do
      expect{ 5.euro }.not_to raise_error
    end
  end

  describe "#rupees" do
    it "rupees should be a valid currency" do
      expect{ 5.rupees }.not_to raise_error
    end

    it "rupee should be a valid currency" do
      expect{ 5.rupee }.not_to raise_error
    end
  end

  describe "#yen" do
    it "yen should be a valid currency" do
      expect{ 5.yen }.not_to raise_error
    end
  end


end
