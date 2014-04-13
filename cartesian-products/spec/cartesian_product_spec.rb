require "spec_helper"

describe CartesianProduct do

  describe "#each" do
    it "returns cartesian product of two sequences" do
      c = CartesianProduct.new([:a,:b], [4,5])
      cp = []
      c.each { |etl| cp << etl }
      cp.should == [[:a, 4],[:a, 5],[:b, 4],[:b, 5]]
    end

    it "should return empty array if one sequence is empty" do
      c = CartesianProduct.new([:a,:b], [])
      cp = []
      c.each { |etl| cp << etl }
      cp.should == []
    end
  end

end
