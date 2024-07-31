require 'minitest/autorun'
require_relative 'calculator'

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_check_with_empty_string
    assert_equal 0, @calculator.add("")
  end

  def test_check_with_one
    assert_equal 1, @calculator.add("1")
  end

  def test_with_multiple
    assert_equal 5, @calculator.add("1,2,2")
  end

  def test_handle_new_line
    assert_equal 6, @calculator.add("1\n2, 3")
    assert_equal 3, @calculator.add("//;\n1;2")
  end

  def test_with_negative_number
    exception = assert_raises(NegativeNumberError) do
      @calculator.add("-2,4,-6,-3,5,4")
    end
    puts "\n#{exception}"
  end
end
