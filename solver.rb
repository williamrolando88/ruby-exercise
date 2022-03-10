class Solver
  def factorial(number)
    if !number.is_a?(Integer)
      return 'Invalid type input'
    elsif number.negative?
      return nil
    elsif number.zero?
      return 1
    else
      return (1..number).inject(:*)
    end
  end
  
  def reverse(string)
    string.to_s.reverse
  end
  
  def fizzbuzz(number)
    if !number.is_a?(Numeric)
      return 'Invalid input type: number must be an number.'
    elsif !number.is_a?(Integer) && !number.positive?
      return 'Invalid input type: number must be a positive integer.'
    else
      if number % 3 == 0 && number % 5 == 0
        return 'fizzbuzz'
      elsif number % 3 == 0
        return 'fizz'
      elsif number % 5 == 0
        return 'buzz'
      else
        return number.to_s
      end
    end
  end
end