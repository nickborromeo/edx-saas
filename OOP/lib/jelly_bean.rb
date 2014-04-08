class JellyBean < Dessert

  attr_accessor :flavor

  def initialize(name, calories, flavor)
    @flavor = flavor
    super(name, calories)
  end

  def delicious?
    flavor == "black-licorice" ? false : true
  end

end
