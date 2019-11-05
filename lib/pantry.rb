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
    x = @stock[:ingredient] =+ amount
    y = []
    @stock.each do |amt|
      y << amt[1]
    end
    y.sum
  end

end
