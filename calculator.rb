class Calculator
  def sum_only_integer_values(string)
    numbers = string.scan(/\d+/)
    numbers = numbers.map(&:to_i)
    sum = numbers.sum
  end
end
