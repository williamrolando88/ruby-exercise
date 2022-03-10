require_relative '../solver.rb'

describe "Instance of solver to be created" do
  before :each do
    @solver = Solver.new
  end

  context "running the Factorial method" do
    it "matches the factorial of 3 to be 6" do
      answer = @solver.factorial(3)
      expect(answer).to eql 6 
    end

    it "for 0 has to return 1" do
      answer = @solver.factorial(0)
      expect(answer).to eql 1
    end

    it "for 1 has to return 1" do
      answer = @solver.factorial(1)
      expect(answer).to eql 1 
    end

    it "for any negative number to return nil" do
      answer = @solver.factorial(-9)
      expect(answer).to be_nil 
    end
    
    it "for any not integer positive number to return nil" do
      answer = @solver.factorial(3.69)
      expect(answer).to eql 'Invalid type input'
    end    

    it "for any input that is not number to return Invalid type input error" do
      answer = @solver.factorial('testing')
      expect(answer).to eql 'Invalid type input'
    end    
  end

  context "running the Reverse method" do
    it 'should reverse the string "eye" to "eye"' do
      answer = @solver.reverse("eye")
      expect(answer).to eql "eye"
    end

    it 'should reverse the number 12345 to a string "54321"' do
      answer = @solver.reverse(12345)
      expect(answer).to eql "54321"
    end
  end
end