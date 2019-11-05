require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
require './lib/pantry'


class PantryTest < Minitest::Test

  def setup
    @pantry = Pantry.new
    @ingredient_1 = Ingredient.new("Cheese", "C", 100)
    @ingredient_2 = Ingredient.new("Macaroni", "oz", 30)
    @recipe_1 = Recipe.new("Mac and Cheese")
  end

  def test_it_exists
    assert_instance_of Pantry, @pantry
  end

  def test_stock
    assert_equal ({}), @pantry.stock
  end

  def test_stock_check_empty
    @recipe_1.add_ingredient(@ingredient_1 , 2)
    @recipe_1.add_ingredient(@ingredient_2, 8)


    assert_equal 0, @pantry.stock_check(@ingredient_1)
  end

  def test_restock
    @pantry.restock(@ingredient_1, 5)
    @pantry.restock(@ingredient_1, 10)

    assert_equal 15, @pantry.stock_check(@ingredient_1)
  end

end
