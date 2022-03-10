class Solver
  def factorial(number)
    state = input_haserrors(number)
    return state if state

    if number.zero?
      1
    else
      (1..number).inject(:*)
    end
  end

  def reverse(string)
    string.to_s.reverse
  end

  def fizzbuzz(number)
    state = input_haserrors(number)
    return state if state

    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end

  private

  def input_haserrors(number)
    if !number.is_a?(Numeric)
      'Invalid input type: number must be an number.'
    elsif !number.is_a?(Integer)
      'Invalid input type: number must be an integer.'
    elsif number.negative?
      'Invalid input type: number must be a positive integer.'
    else
      false
    end
  end
end
