class CartesianProduct

  include Enumerable

  def initialize(seq1, seq2)
    @sequence1 = seq1
    @sequence2 = seq2
  end

  def each
    @sequence1.each do |seq1|
      @sequence2.each do |seq2|
        yield [seq1, seq2]
      end
    end
  end
end
