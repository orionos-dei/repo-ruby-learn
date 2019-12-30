class Calculator
  def add(*a)
    a.map!(&:to_i) unless nil
    a.inject(:+)
  end
  def multiply(*a)
    a.map!(&:to_i) unless nil
    a.inject(:*)
  end

end