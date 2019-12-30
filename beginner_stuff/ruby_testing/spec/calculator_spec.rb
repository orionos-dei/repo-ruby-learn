require './lib/calculator'

RSpec.describe Calculator do
  describe "#add" do
    it "returns the sum of two integers" do
      calculator = Calculator.new
      expect(calculator.add(5,2)).to eql(7)
    end

    it "returns the sum of more than two integers" do
      calculator = Calculator.new
      expect(calculator.add(1,2,3)).to eql(6)
    end
  end
end