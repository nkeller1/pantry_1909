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
    amt = []
    @stock.values.each do |add|
      require "pry"; binding.pry
      amt << add
    end

    # items = []
    # add = @stock[:ingredient] = amount
    # items << add
    # @stock[:ingredient] = amount
    # items << add + @stock.values

  end

end
