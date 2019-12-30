class Calculator
  def add(*a)
    a.inject(:+)
  end
end