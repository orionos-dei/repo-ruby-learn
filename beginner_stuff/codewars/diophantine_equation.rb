def factors(n)
  1.upto(Math.sqrt(n)).select {|i| (n % i).zero?}.inject([]) do |f, i| 
    f << [i, n/i]
  end
end

def sol_equa(n)
  res = []
  factors(n).each do |a, b|
      m = a + b
      n = b - a
      if (m % 2 == 0) && (n % 4 == 0) then
          res << [m / 2, n / 4]
      end
  end
  res
end