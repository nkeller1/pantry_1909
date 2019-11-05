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
    @stock[:ingredient] = amount
    # require "pry"; binding.pry
    amount.sum do |amt|
      require "pry"; binding.pry
        add << amt
    end
    # @stock.values.map do |add|
    #   add
    # end
  end

end
