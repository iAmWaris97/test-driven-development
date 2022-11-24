require_relative '../solver'

describe Solver do
  let(:solver) { Solver.new }

  describe 'Test factorial method' do
    it 'Should return the factorial of all integer between 1 to N' do
      expect(solver.factorial(6)).to eql(720)
    end
    it 'Should return 1 if zero is passed in as an integer' do
      expect(solver.factorial(0)).to eql(1)
    end

    it 'Should return "Negative nums are invalid" alert on negative numbers' do
      expect(solver.factorial(-12)).to eql('Negative nums are invalid')
    end
  end

  describe 'Test reverse method' do
    it 'Should reverse a string' do
      expect(solver.reverse('Waris')).to eql('siraW')
    end
  end

  describe 'Test fizzbuzz method' do
    it 'Should return fizzbuzz if the number is divisible by 3 and 5 at the same time' do
      expect(solver.fizzbuzz(30)).to eql('fizzbuzz')
    end

    it 'Should return fizz if the number is divisible by 3' do
      expect(solver.fizzbuzz(9)).to eql('fizz')
    end

    it 'Should return buzz if the number is divisible by 5' do
      expect(solver.fizzbuzz(25)).to eql('buzz')
    end

    it 'Should return the number itself if it is neither divisible by 3 nor 5' do
      expect(solver.fizzbuzz(2)).to eql(2)
    end
  end
end
