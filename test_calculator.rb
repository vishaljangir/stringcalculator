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

  def test_with_multiple
    assert_equal 5, @calculator.sum_only_integer_values("1,2,2")
  end

  def test_handle_new_line
    assert_equal 6, @calculator.sum_only_integer_values("1\n2, 3")
    assert_equal 3, @calculator.sum_only_integer_values("//;\n1;2")
  end

  def test_with_negative_number
    exception = assert_raises(NegativeNumberError) do
      @calculator.sum_only_integer_values("-2,4,-6,-3,5,4")
    end
    puts "\n#{exception}"
  end
end
