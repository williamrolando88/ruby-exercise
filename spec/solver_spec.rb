require_relative '../solver'

describe 'Instance of solver to be created' do
  before :each do
    @solver = Solver.new
  end

  context 'running the Factorial method' do
    it 'matches the factorial of 3 to be 6' do
      answer = @solver.factorial(3)
      expect(answer).to eql 6
    end

    it 'for 0 has to return 1' do
      answer = @solver.factorial(0)
      expect(answer).to eql 1
    end

    it 'for 1 has to return 1' do
      answer = @solver.factorial(1)
      expect(answer).to eql 1
    end

    it 'for any negative number to return nil' do
      answer = @solver.factorial(-9)
      expect(answer).to eql 'Invalid input type: number must be a positive integer.'
    end

    it 'for any not integer positive number to return nil' do
      answer = @solver.factorial(3.69)
      expect(answer).to eql 'Invalid input type: number must be an integer.'
    end

    it 'for any input that is not number to return Invalid type input error' do
      answer = @solver.factorial('testing')
      expect(answer).to eql 'Invalid input type: number must be an number.'
    end
  end

  context 'running the Reverse method' do
    it 'should reverse the string "eye" to "eye"' do
      answer = @solver.reverse('eye')
      expect(answer).to eql 'eye'
    end

    it 'should reverse the number 12345 to a string "54321"' do
      answer = @solver.reverse(12_345)
      expect(answer).to eql '54321'
    end
  end

  context 'running the FizzBuzz method' do
    it 'for any not positive integer number return Invalid input type' do
      answer = @solver.fizzbuzz(-3.69)
      expect(answer).to eql 'Invalid input type: number must be an integer.'
    end

    it 'for any not positive integer number return Invalid input type' do
      answer = @solver.fizzbuzz(-3)
      expect(answer).to eql 'Invalid input type: number must be a positive integer.'
    end

    it 'for any input that is not a number return Invalid input type' do
      answer = @solver.fizzbuzz('test')
      expect(answer).to eql 'Invalid input type: number must be an number.'
    end

    it "for any positive number divisible by 3 to return 'fizz'" do
      answer = @solver.fizzbuzz(3 * 126)
      expect(answer).to eql 'fizz'
    end

    it "for any positive number divisible by 5 to return 'buzz'" do
      answer = @solver.fizzbuzz(5 * 127)
      expect(answer).to eql 'buzz'
    end

    it "for any positive number divisible by 3 and 5 to return 'fizzbuzz'" do
      answer = @solver.fizzbuzz(3 * 5 * 161)
      expect(answer).to eql 'fizzbuzz'
    end

    it 'for any positive number non divisible by 3 or 5 to return number itself as string' do
      answer = @solver.fizzbuzz(161)
      expect(answer).to eql '161'
    end
  end
end
