module Enumerable
  def is_palindrome?
    self == self.reverse_each.map{ |i| i }
  end
end
