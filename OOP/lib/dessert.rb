class Dessert

  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    calories > 200 ? false : true
  end

  def delicious?
    true
  end
end
