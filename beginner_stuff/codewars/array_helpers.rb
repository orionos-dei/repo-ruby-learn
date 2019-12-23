class Array
  def square
    map {|x| x*x}
  end

  def cube
    map {|x| x**3}
  end
  
  def average
    sum / size
  end
  
  def sum
    reduce(:+)
  end
  
  def even
    select(&:even?)
  end
  
  def odd
    select(&:odd?)
  end
end