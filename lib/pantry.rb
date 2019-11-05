class Pantry
  attr_reader :stock, :stock_check

  def initialize
    @stock = {}
    @stock_check = 0
  end

  def stock_check(ingredient)
    @stock_check
  end

  def restock(ingredient, amount)
    @stock.reduce({}) do |ingredient, amount|
    ingredient[:key] = amount
    require "pry"; binding.pry
    ingredient
  end
  end

end
