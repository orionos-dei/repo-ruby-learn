def stock_picker array

  profit = 0
  buy_day = 0
  sell_day = 0

  for x in 0...array.length do
    for y in x...array.length do
      if array[y] - array[x] > profit
        profit = array[y] - array[x]
        buy_day = x
        sell_day = y
      end
    end
  end

  "Buy on day #{buy_day}\nSell on day #{sell_day}\nYour profit will be $#{profit}!"
end

puts stock_picker([17,3,6,9,15,8,6,1,10])