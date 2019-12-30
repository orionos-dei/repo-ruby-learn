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

    it "returns nil if the def has 0 integers" do
      calculator = Calculator.new
      expect(calculator.add()).to eql(nil)
    end

    it "converts strings to integers" do
      calculator = Calculator.new
      expect(calculator.add("one","two")).to eql(0)
      expect(calculator.add("2",3)).to eql(5)
    end
  end
  describe "#multiply" do
    it "returns the * of two integers" do
      calculator = Calculator.new
      expect(calculator.multiply(5,2)).to eql(10)
    end

    it "returns the * of more than two integers" do
      calculator = Calculator.new
      expect(calculator.multiply(1,2,3)).to eql(6)
    end

    it "returns nil if the def has 0 integers" do
      calculator = Calculator.new
      expect(calculator.multiply()).to eql(nil)
    end

    it "converts strings to integers" do
      calculator = Calculator.new
      expect(calculator.multiply("one","two")).to eql(0)
      expect(calculator.multiply("2",3)).to eql(6)
    end

  end
end