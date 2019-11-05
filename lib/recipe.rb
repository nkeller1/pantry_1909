class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new
  end

  def add_ingredient(ingredient_name, amount)
    @ingredients_required[ingredient_name] = amount
  end

  def amount_required(ingredient_name)
    @ingredients_required[ingredient_name]
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    ingredients.sum do |ingredient|
      amount_required(ingredient) * ingredient.calories
    end
  end
end
