class Solver
  def factorial(number)
    if number.zero?
      1
    elsif number.negative?
      'Negative nums are invalid'
    else
      number * factorial(number - 1)
    end
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number
    end
  end
end

solver = Solver.new
puts solver.factorial(6)
puts solver.reverse('Waris')
puts solver.fizzbuzz(9)
puts solver.fizzbuzz(25)
puts solver.fizzbuzz(30)
