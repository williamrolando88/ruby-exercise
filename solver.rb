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
    
  end
end