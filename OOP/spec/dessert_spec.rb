require "spec_helper"

describe "Dessert" do

  describe "#healthy" do
    it "should return true when dessert has less than 200 calories" do
      dessert = Dessert.new("very health dessert", 150)
      dessert.healthy?.should == true
    end

    it "should return false when dessert is more that 200 calories" do
      dessert = Dessert.new("unhealthy!!", 600)
      dessert.healthy?.should == false
    end
  end

  describe "#delicious?" do
    it "all desserts should be delicious and return true" do
      dessert = Dessert.new("very health dessert", 150)
      dessert.delicious?.should == true
    end
  end
end
