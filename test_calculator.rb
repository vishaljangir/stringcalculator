require 'minitest/autorun'
require_relative 'calculator'

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_check_with_empty_string
    assert_equal 0, @calculator.sum_only_integer_values("")
  end

  def test_check_with_one
    assert_equal 1, @calculator.sum_only_integer_values("1")
  end
end
