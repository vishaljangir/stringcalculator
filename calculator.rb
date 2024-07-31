class NegativeNumberError < StandardError; end

class Calculator
  def add(string)
    numbers = string.scan(/-?\d+/)
    numbers = numbers.map(&:to_i)
    if numbers.any?(&:negative?)
      negative_numbers = numbers.select { |number| number.negative? }.join(",")
      raise NegativeNumberError, "negative numbers not allowed #{negative_numbers}"
    end
    sum = numbers.sum
  end
end
