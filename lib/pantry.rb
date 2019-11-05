class Pantry
  attr_reader :stock, :stock_check

  def initialize
    @stock = {}
    @stock_check = 0
  end

  # def stock(ingredient, amount)
  #   @stock[:ingredient] = amount
  # end

  def stock_check(ingredient)
    @stock_check
  end

  def restock(ingredient, amount)
    items = []
    add = @stock[:ingredient] = amount
    items << add
    @stock[:ingredient] = amount
    items << add + @stock.values

  end

end
