require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'


class IngredientTest < Minitest::Test

  def setup
    @ingredient_1 = Ingredient.new("Cheese", "oz", 50)
  end

  def test_it_exists
    assert_instance_of Ingredient, @ingredient_1
  end

  def test_attributes
    assert_equal "Cheese", @ingredient_1.name
    assert_equal "oz", @ingredient_1.unit
    assert_equal 50, @ingredient_1.calories
  end

end
