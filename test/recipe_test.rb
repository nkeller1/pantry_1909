require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'


class RecipeTest < Minitest::Test

  def setup
    @ingredient_1 = Ingredient.new("Cheese", "C", 100)
    @ingredient_2 = Ingredient.new("Macaroni", "oz", 30)
    @recipe_1 = Recipe.new("Mac and Cheese")
  end

  def test_it_exists
    assert_instance_of Recipe, @recipe_1
  end

  def test_it_has_attributes
    assert_equal "Mac and Cheese", @recipe_1.name
    assert_equal ({}), @recipe_1.ingredients_required
  end

  def test_add_ingredient
    @recipe_1.add_ingredient(@ingredient_1 , 2)
    @recipe_1.add_ingredient(@ingredient_2, 8)

    expected = { @ingredient_1 => 2, @ingredient_2 => 8 }

    assert_equal expected, @recipe_1.ingredients_required
  end

  def test_amount_required
    @recipe_1.add_ingredient(@ingredient_1 , 2)
    @recipe_1.add_ingredient(@ingredient_2, 8)

    @recipe_1.amount_required(@ingredient_1)

    assert_equal 2, @recipe_1.amount_required(@ingredient_1)
    assert_equal 8, @recipe_1.amount_required(@ingredient_2)
  end

  def test_ingredients
    assert_equal [], @recipe_1.ingredients

    @recipe_1.add_ingredient(@ingredient_1 , 2)
    @recipe_1.add_ingredient(@ingredient_2, 8)

    assert_equal [@ingredient_1, @ingredient_2], @recipe_1.ingredients
  end


  def test_total_calories
    @recipe_1.add_ingredient(@ingredient_1 , 2)
    @recipe_1.add_ingredient(@ingredient_2, 8)

    assert_equal 440, @recipe_1.total_calories
  end
end
