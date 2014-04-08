require "spec_helper"

describe "JellyBean" do
  describe "#delicious?" do
    it "black-licorice should not be delicious" do
      jelly_bean = JellyBean.new("jelly bean", "250", "black-licorice")
      jelly_bean.delicious?.should == false
    end

    it "all other flavors should be delicious" do
      jelly_bean = JellyBean.new("jelly bean", "250", "green")
      jelly_bean.delicious?.should == true
    end

    it "all non-JellyBean desserts should be delicious" do
      dessert = Dessert.new("non jelly bean", "250")
      dessert.delicious?.should == true
    end
  end
end
